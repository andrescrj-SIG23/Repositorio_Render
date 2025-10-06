# Usa la imagen oficial de Metabase 
FROM metabase/metabase:v0.56.8

# Crea un directorio para la base de datos (si usas un volumen persistente)
RUN mkdir -p /app/data

# Copia el archivo de la base de datos H2 al directorio donde Metabase lo espera
COPY metabase.db.mv.db /app/data/metabase.db.mv.db

# Configura la variable de entorno para usar la base de datos H2 existente
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/app/data/metabase.db.mv.db

# Exponer el puerto 3000 (puerto por defecto de Metabase)
EXPOSE 3000

# Comando para iniciar Metabase
CMD ["java", "-jar", "/app/metabase.jar"]