#!/bin/bash

# Função para listar serviços de inicialização
listar_servicos() {
    echo "🔍 Listando serviços iniciados no boot..."
    echo "------------------------------------------"
    
    echo "🟢 Itens de Login:"
    osascript -e 'tell application "System Events" to get the name of every login item'

    echo -e "\n🟡 Agentes do usuário (~Library/LaunchAgents/):"
    ls -1 ~/Library/LaunchAgents/ 2>/dev/null

    echo -e "\n🔴 Daemons do sistema (/Library/LaunchDaemons/):"
    ls -1 /Library/LaunchDaemons/ 2>/dev/null

    echo -e "\n🔴 Daemons do sistema (/System/Library/LaunchDaemons/):"
    ls -1 /System/Library/LaunchDaemons/ 2>/dev/null
}

# Função para listar aplicativos instalados
listar_apps() {
    echo "📦 Listando aplicativos instalados..."
    echo "------------------------------------------"
    
    echo "📂 Aplicativos em /Applications:"
    ls -1 /Applications | grep .app

    echo -e "\n📂 Aplicativos do usuário em ~/Applications:"
    ls -1 ~/Applications 2>/dev/null | grep .app
}

# Função para desativar um serviço
desativar_servico() {
    echo "Digite o nome do serviço que deseja desativar (exemplo: com.google.keystone.agent.plist):"
    read servico
    if [[ -f ~/Library/LaunchAgents/$servico ]]; then
        mv ~/Library/LaunchAgents/$servico ~/Library/LaunchAgents/$servico.disabled
        echo "✅ Serviço $servico desativado (movido para .disabled)."
    elif [[ -f /Library/LaunchDaemons/$servico ]]; then
        sudo mv /Library/LaunchDaemons/$servico /Library/LaunchDaemons/$servico.disabled
        echo "✅ Serviço $servico desativado (movido para .disabled)."
    else
        echo "❌ Serviço não encontrado!"
    fi
}

# Menu
while true; do
    echo -e "\n=== 🛠️ Limpeza do Mac ==="
    echo "1️⃣ Listar serviços de inicialização"
    echo "2️⃣ Listar aplicativos instalados"
    echo "3️⃣ Desativar serviço de inicialização"
    echo "4️⃣ Sair"
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1) listar_servicos ;;
        2) listar_apps ;;
        3) desativar_servico ;;
        4) echo "🚀 Limpeza finalizada!"; exit ;;
        *) echo "❌ Opção inválida!" ;;
    esac
done
