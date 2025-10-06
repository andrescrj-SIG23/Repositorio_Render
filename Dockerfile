FROM metabase/metabase:v0.56.8

# Render asigna $PORT; Metabase debe escuchar en ese puerto
ENV MB_JETTY_PORT=${PORT}

# Demo con H2 (no producción)
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/app/data/metabase.db

# Copia tu archivo H2 (debe ser H2 v2)
COPY metabase.db.mv.db /app/data/metabase.db.mv.db
