#!/bin/bash
set -e

CUID="$(stat -c %u ~)"
CGID="$(stat -c %g ~)"

cp chembience.env .env

sed -i -e "s/@CHEMBIENCE_UID/${CUID}/g" .env
sed -i -e "s/@CHEMBIENCE_GID/${CGID}/g" .env

cp .env ./context/build
cp .env ./context/build/sphere/app-context
cp .env ./context/build/django
cp .env ./context/build/django/app-context
cp .env ./context/build/rdkit
cp .env ./context/build/rdkit/app-context
cp .env ./context/build/jupyter
cp .env ./context/build/jupyter/app-context
cp .env ./context/build/rdkit-postgres-compile
cp .env ./context/app
