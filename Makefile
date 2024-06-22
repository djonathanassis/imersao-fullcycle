
DOCKER_COMP = docker compose

go:
	@$(DOCKER_COMP) exec golang go run cmd/events/main.go

mysql-port:
	@$(DOCKER_COMP) exec mysql -utest_user -ptest_password -hgolang-mysql -P3306

npm-nestjs:
	@$(DOCKER_COMP) exec nestjs npm install

nestjs:
	@$(DOCKER_COMP) exec nestjs npm run migrate:$(p) \
	&& $(DOCKER_COMP) exec nestjs npm run start $(p)-fixture \
	&& $(DOCKER_COMP) exec nestjs npm run start:dev $(p)

npm-nextjs:
	@$(DOCKER_COMP) exec nextjs npm install

nextjs:
	$(DOCKER_COMP) exec nextjs npm run dev

mv:
	mv front-nextjs/.env.example front-nextjs/.env
