!bin/bash
    
      # Обновление пакетов
      sudo apt update

      # Установка необходимых зависимостей
      sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

      # Добавление официального GPG-ключа Docker
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

      # Добавление репозитория Docker
      sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

      # Обновление списка пакетов и установка Docker
      sudo apt update
      sudo apt install -y docker-ce

      # Добавление пользователя в группу docker (чтобы запускать без sudo)
      sudo usermod -aG docker vagrant

      # Обновить группу для применения нового членства
      newgrp docker

      # Установка Docker-Compose 
      sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
      sudo chmod +x /usr/local/bin/docker-compose 

      # Установить права на выполнение
      sudo chmod +x /usr/local/bin/docker-compose

      # Проверка установки
      docker --version
      docker-compose --version