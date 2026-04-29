FROM python:3.11-slim

WORKDIR /app

# Installer dependencies système
RUN apt-get update && apt-get install -y \
    git \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copier le projet dbt entier
COPY . /app/

# Installer Python dependencies
RUN pip install --upgrade pip setuptools wheel && \
    pip install dbt-postgres

# Exécuter dbt
ENTRYPOINT ["dbt"]
CMD ["run", "--profiles-dir", ".", "--target", "aws"]