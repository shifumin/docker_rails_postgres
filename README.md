# docker_rails_postgres
A Docker template for setting up a Rails application with PostgreSQL.

## Examples

```bash
docker pull ruby:3.3.5
docker pull postgres:17.0

docker compose build --no-cache
docker compose run --rm web bundle exec rails new . --database=postgresql
docker compose run --rm web bin/rails db:create
docker compose up
```
