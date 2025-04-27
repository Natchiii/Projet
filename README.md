# Evilly - Backend Strapi avec Kafka et PostgreSQL

## 📦 Présentation

**Evilly** est une application backend construite avec [Strapi](https://strapi.io/), utilisant **PostgreSQL** comme base de données et intégrée à un environnement de **messagerie Kafka** avec des producteurs/consommateurs pour gérer des produits, stocks et événements.

## 🧱 Architecture

L'infrastructure repose sur Docker et Docker Compose, incluant :

- Strapi
- Base de données PostgreSQL
- Kafka + Zookeeper
- Producers & Consumers pour :
  - Produits
  - Stocks
  - Événements

---

## ⚙️ Prérequis

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Un fichier `.env` à la racine du projet avec les variables suivantes :

env
# Base de données PostgreSQL
DATABASE_CLIENT=postgres
DATABASE_HOST=127.0.0.1
DATABASE_PORT=5432
DATABASE_NAME=strapi
DATABASE_USERNAME=strapi
DATABASE_PASSWORD=safepassword
DATABASE_SSL=false
DATABASE_FILENAME=.tmp/data.db

# Strapi
JWT_SECRET=X/BG1tjwSzyG01DlD3/ZrQ==
ADMIN_JWT_SECRET=IBC6AILZPhucINGkVHGSxg==
APP_KEYS=Qd4ZqQ7AHWIVgCubU045xw==,rUtNlHnTg+MqQs95REFO6Q==,nrTKEXxGiJa8i5tvoWTmqA==,yxwnymCwPz+6b6DdF0GkbA==

# Token d’accès pour les consumers
STRAPI_TOKEN=30a95ca6c4c9912a74f5388600ba1312c4dca41426b735773ced71952d63a53962231632cd736c708ca9747a496ffbdc3c0e6c24eb0aee4e0ea3f7b25fe2e7165a51edec93d49fe1b190531c17dbf2781ccdf67ef82d2c84893b5c405fb57d1c52b4c94e03c81c6eec68e6939f5b507658de542d18c9a5c052ca3c19c0b0c306

## 🚀 Lancement du projet
voir Opsci(commande)

## 🔧 Accès à l'application
Strapi admin panel : http://localhost:1337/admin
React : http://localhost:5173

## Structure du projet 
Opsci/
├── Evilly/                         # Backend - API Strapi + microservices Kafka
│   ├── config/
│   ├── database/
│   ├── dist/
│   ├── node_modules/
│   ├── public/
│   ├── src/
│   ├── types/
│   ├── event-consumer-master/
│   ├── event-producer-master/
│   ├── product-consumer-master/
│   ├── product-producer-master/
│   ├── stock-consumer-master/
│   ├── stock-producer-master/
│   ├── .dockerignore
│   ├── Dockerfile
│   ├── docker-compose.yml
│   ├── package.json
│   ├── package-lock.json
│   ├── README.md
│   ├── tsconfig.json
│   ├── yarn.lock
│   ├── mosquitto.conf
│   ├── mqtt-js-test-master/
│   ├── mosquitto/
│   ├── mosquitto-data/
│   ├── mosquitto-log/
├── opsci-strapi-frontend-master/  # Frontend - Application React + Vite + TypeScript
│   ├── node_modules/
│   ├── public/
│   ├── src/
│   ├── index.html
│   ├── vite.config.ts
│   ├── package.json
│   ├── package-lock.json
│   ├── tsconfig.json
│   ├── tsconfig.node.json
│   ├── README.md

## 🧠 Architecture Microservices Kafka
Voici les microservices Kafka utilisés :
event-producer-master / event-consumer-master
product-producer-master / product-consumer-master
stock-producer-master / stock-consumer-master
mqtt-kafka-connector / mosquitto

## 🛠 Technologies
Backend : Strapi v4, PostgreSQL, KafkaJS, MQTT, mosquitto
Frontend : React, Vite, TypeScript
DevOps : Docker, Docker Compose

## Auteur
21206527 - Ernest Rodelet
21216550 - Emeline Sieng
