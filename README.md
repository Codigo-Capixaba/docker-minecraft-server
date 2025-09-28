# 🌍 Servidor Minecraft com Docker

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Minecraft](https://img.shields.io/badge/Minecraft-62B47A?style=for-the-badge&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Status](https://img.shields.io/badge/Status-Ativo-success?style=for-the-badge)](#)

Este repositório contém a configuração de um servidor **Minecraft** rodando em **Docker** com o auxílio do **Docker Compose**.  
A imagem utilizada é a [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server), a mais popular e completa para servidores Minecraft.  

---

## 🚀 Como rodar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/Codigo-Capixaba/docker-minecraft-server.git
   cd docker-minecraft-server
   ```

2. **Suba o servidor com Docker Compose**:

   ```bash
   docker compose up -d
   ```

3. O servidor irá rodar na porta **25565**.

   * Conecte-se no Minecraft usando:

   ```
   localhost:25565
   ```

---

## ⚙️ Configurações

O arquivo [`docker-compose.yml`](./docker-compose.yml) já vem configurado com alguns parâmetros básicos:

* **Porta**: `25565` (externa e interna)
* **Memória alocada**: `2G`
* **Versão do Minecraft**: `1.21.5`
* **Modo de jogo**: `survival`
* **Dificuldade**: `normal`
* **Online Mode**: `FALSE` (aceita jogadores não originais/cracked)
* **Persistência**: mundos e configs salvos em `./minecraft`

Caso queira alterar, edite as variáveis em `environment:` no `docker-compose.yml`.

---

## 📂 Volumes

Os arquivos do servidor ficam salvos na pasta local:

```
/PROJETOS/minecraft:/data
```

Assim, mesmo reiniciando o container ou servidor, os mundos e configs não são perdidos.

---

## 🔧 Comandos úteis

* **Subir o servidor**:

  ```bash
  docker compose up -d
  ```

* **Parar o servidor**:

  ```bash
  docker compose down
  ```

* **Ver os logs em tempo real**:

  ```bash
  docker compose logs -f
  ```

---

## 🎮 Conectando ao servidor

Se estiver rodando na sua própria máquina, basta entrar no Minecraft e adicionar:

```
Servidor: localhost
Porta: 25565
```

Se rodar em um VPS/Servidor remoto, use o **IP público** do host no lugar de `localhost`.

---

## 📝 Licença

Este projeto é apenas uma configuração de uso do **Docker**.
Todos os direitos do jogo **Minecraft** pertencem à [Mojang Studios](https://www.minecraft.net/) / [Microsoft](https://www.microsoft.com/).

---

💡 *Dica*: quer deixar o servidor ainda mais personalizado?
Você pode adicionar mods, plugins e até habilitar whitelist/editando as configs na pasta `./minecraft`. 😉
