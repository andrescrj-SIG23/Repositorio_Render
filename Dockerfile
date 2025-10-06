# Usa la imagen oficial de Metabase (ajusta la versión si es diferente)
FROM metabase/metabase:v0.56.8

# Copia el archivo de la base de datos H2 al directorio donde Metabase lo espera
COPY metabase.db.mv.db /app/metabase.db.mv.db

# Configura la variable de entorno para usar la base de datos H2 existente
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/app/metabase.db.mv.db

# Exponer el puerto 3000 (puerto por defecto de Metabase)
EXPOSE 3000

# Comando para iniciar Metabase
CMD ["java", "-jar", "/app/metabase.jar"]