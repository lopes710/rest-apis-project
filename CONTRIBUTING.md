# CONTRIBUTING

## How to run the Dockerfile locally
docker run --name CONTAINER_NAME -dp 5000:5000 -w /app -v "$(pwd):/app" IMAGE_NAME

or 

docker run --name CONTAINER_NAME -dp 5000:5000 -w /app -v "$(pwd):/app" IMAGE_NAME sh -c "flask run --host 0.0.0.0"

## Setting postgressql database locally
in docker-compose.yml add:
    db:
    image: postgres
    environment:
      - POSTGRES_PASSWORD=password
      - POSTGRES_DB=myapp
    volumes:
      - postgres_data:/var/lib/postgresql/data
volumes:
  postgres_data:

then run the command: docker compose up