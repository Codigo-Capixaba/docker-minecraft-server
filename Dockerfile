services:
  minecraft:
    image: itzg/minecraft-server:latest
    container_name: minecraft_server
    ports:
      - "25565:25565"          # porta_externa : porta_interna
    environment:
      EULA: "TRUE"             # Aceita os termos da Mojang
      MEMORY: "2G"             # Memória para o servidor
      VERSION: "1.21.5"        # Versão do Minecraft
      MODE: "survival"         # survival, creative, adventure
      DIFFICULTY: "normal"     # peaceful, easy, normal, hard
      ONLINE_MODE: "FALSE"      # TRUE exige login da Mojang, FALSE aceita crack
    volumes:
      - /PROJETOS/minecraft:/data  # Salva os mundos e configs na pasta local
    restart: unless-stopped
