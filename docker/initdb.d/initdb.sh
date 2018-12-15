#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE ROLE ultralisp_ro WITH LOGIN PASSWORD 'ultralisp_ro';
GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO ultralisp_ro;
EOSQL
