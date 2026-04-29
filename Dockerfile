FROM python:3.11-slim

WORKDIR /app

# Installer les dépendances système
RUN apt-get update && apt-get install -y \
    git \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copier le projet
COPY . /app/

# Installer Python dependencies
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

# Variables d'environnement par défaut
ENV DBT_PROFILES_DIR=/app
ENV DBT_TARGET=aws

# Commande par défaut : lancer dbt run
ENTRYPOINT ["dbt"]
CMD ["run", "--profiles-dir", "/app"]