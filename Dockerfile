services:
  postgres:
    image: postgres:latest
    environment:
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
      POSTGRES_DB: postgres
    ports:
      - '5432:5432'
    volumes:
      - ./docker_postgres_init.sql:/docker-entrypoint-initdb.d/docker_postgres_init.sql