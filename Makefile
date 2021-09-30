up:
	@docker-compose -f srcs/docker-compose.yml up
down:
	@docker-compose -f srcs/docker-compose.yml down
re:	
	@docker-compose -f srcs/docker-compose.yml up --build
clean:
	@echo "Prepairing for eval"
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	sudo rm -Rf /home/ewgerdur/data/db
	sudo rm -Rf /home/ewgerdur/data/wp
	sudo mkdir /home/ewgerdur/data/db
	sudo mkdir /home/ewgerdur/data/wp
ps:
	docker-compose -f srcs/docker-compose.yml ps