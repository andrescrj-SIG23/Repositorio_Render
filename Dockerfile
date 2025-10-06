FROM metabase/metabase:v0.56.8
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/app/data/metabase.db
COPY metabase.db.mv.db /app/data/metabase.db.mv.db
