build-backend:
	docker-compose up --build

start-backend:
	docker-compose up

start-frontend:
	cd frontend && npm run start