# Imersão FullCycle - partners-api

## Desafio01
Neste desafio, você deverá clonar a aplicação Nest.js do projeto da Imersão Full Cycle e implementar algumas coisas:


A aplicação está dividida em 2 apps (partner1 partner2) + a lib core. Você deverá criar um projeto novo e condensar apenas o partner1 e a lib core no seu novo projeto, ou seja, teremos um projeto Nest.js convencional. Teremos módulos events, spots, prisma, auth.
A aplicação rodará novamente na porta convencional 3000.
Use Docker Compose como usamos na aula
Use apenas a variável MYSQL_DATABASE no docker-compose.yaml em vez do docker-entrypoint-initdb.d
Validar os dados de entrada de alguns endpoints, ao passar os dados inválidos o Nest.js precisa retornar o status 422 informando os problemas encontrados

POST /events

name: obrigatório, string, máximo 255
description: obrigatório, string, máximo 255
date: obrigatório, string, formato ISO8601
price: obrigatório, numbero, mínimo 0

POST spots

name: obrigatório, string, máximo 255

POST /events/:eventId/reserve

spots: obrigatório, array, string
ticket_kind: obrigatório, precisa ter os valores “full” ou “half”

Tratar melhor os erros da operação de reserva via recurso exception filter do Nest.js

Quando os spots passados não existirem lançar um erro 404 com body “{message: Spots not exists: A1, C3, D5, etc}”
Quando os spots passados não existirem disponíveis para reservar um erro 400 com body “{message: Spots A1 is not available for reservation”
Quando lançar um erro no trecho transaction do prisma, precisa responder com status 400 + a mensagem do erro

Compartilhe o link do repositório Git.


Aproveite e um dê uma estrelinha no repositório da Imersão!



Bons estudos!

## Tecnologias

- Typescript / Javascript
- Node.js
- Nest.js
- Prisma.js
- MySQL
- Docker
- Rest

## Nest.js

- npm install -g @nestjs/cli
- nest new project-name
- nest g resource
- nest g module module-name
- nest g service service-name
- nest g library
- nest g app app-name
- nest g guard guard-name

## Prisma.js

- npx prisma init
- npm install @prisma/client
- npx prisma migrate dev
- npx prisma studio
- npx prisma generate
- npx prisma migrate reset

## Rodar

### Requisitos

- Docker

### Comandos

- docker compose up
- npm run migrate:partner1
- npm run migrate:partner2
- npm run start:dev
- npm run start:dev -- partner2
