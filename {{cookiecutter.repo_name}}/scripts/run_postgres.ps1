docker pull postgres:16.1
docker run --rm -P -p 127.0.0.1:5431:5432 -e POSTGRES_PASSWORD="postgres_pw" -e POSTGRES_USER="test_user" -d --name flask_postgres postgres:14-alpine
Write-Host SQLALCHEMY_DATABASE_URI=postgresql://test_user:postgres_pw@127.0.0.1:5432/postgres >> .env
