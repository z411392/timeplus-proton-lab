include .env
export

.PHONY:\
	ps \
	logs \
	down \
	proton

.ONE_SHELL:

ps:
	@docker compose --project-name $${COMPOSE_PROJECT_NAME} ps

proton:
	@docker compose -f proton/docker-compose.yaml up -d \
		--force-recreate

logs:
	@docker compose -f proton/docker-compose.yaml logs -f

down:
	@docker compose --project-name $${COMPOSE_PROJECT_NAME} down