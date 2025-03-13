# 🛠️ Limpeza de Inicialização do Mac

Este script em Bash ajuda a listar e gerenciar serviços e aplicativos que inicializam junto com o macOS. Com ele, você pode visualizar os processos que iniciam no boot e desativar aqueles que não são necessários.

## 📌 Recursos

✅ **Listar serviços de inicialização** (itens de login, agentes e daemons)  
✅ **Listar aplicativos instalados** no sistema  
✅ **Desativar serviços de inicialização** para melhorar o desempenho  

## 🚀 Como instalar e usar

### 1️⃣ Baixar o script
Clone este repositório ou baixe manualmente o arquivo:

```bash
git clone https://github.com/seu-usuario/limpeza-mac.git
cd limpeza-mac
```

Ou baixe apenas o script:

```bash
curl -O https://raw.githubusercontent.com/seu-usuario/limpeza-mac/main/limpeza_mac.sh
```

### 2️⃣ Dar permissão de execução
Antes de rodar o script, você precisa torná-lo executável:

```bash
chmod +x limpeza_mac.sh
```

### 3️⃣ Executar o script
Agora basta rodar o comando:

```bash
./limpeza_mac.sh
```

## 📜 Opções disponíveis
O script exibe um menu interativo com as seguintes opções:

1️⃣ **Listar serviços de inicialização**  
2️⃣ **Listar aplicativos instalados**  
3️⃣ **Desativar um serviço de inicialização**  
4️⃣ **Sair**

## ⚠️ Aviso
- Tenha cuidado ao desativar serviços do sistema, pois alguns são essenciais para o funcionamento do macOS.  
- Para desativar um serviço, o script apenas move o arquivo `.plist` para `.disabled`. Se precisar reativá-lo, basta renomeá-lo de volta.  
- Alguns serviços podem exigir privilégios administrativos (`sudo`).  

## 📝 Licença
Este projeto está sob a licença MIT. Sinta-se à vontade para modificar e contribuir!  

📌 **Criado por [Seu Nome](https://github.com/seu-usuario)**
