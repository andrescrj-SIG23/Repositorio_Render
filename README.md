# Metabase Dashboard de Prueba

Este repositorio contiene un proyecto de prueba para desplegar un dashboard de Metabase en Render usando la base de datos H2 (`metabase.db.mv.db`).

## Requisitos
- Una cuenta en [Render](https://render.com).
- Una cuenta en [GitHub](https://github.com).

## Instrucciones para desplegar

1. **Sube este repositorio a GitHub**:
   - Crea un nuevo repositorio en GitHub y sube los archivos de esta carpeta.

2. **Crea un Web Service en Render**:
   - Ve a [Render](https://render.com) y crea un nuevo "Web Service".
   - Conecta este repositorio de GitHub.
   - Selecciona "Docker" como runtime.
   - Configura las siguientes variables de entorno en "Advanced":
     - `MB_DB_TYPE`: `h2`
     - `MB_DB_FILE`: `/app/metabase.db.mv.db`
   - Elige un plan (el gratuito funciona para pruebas).
   - Despliega la aplicación.

3. **Accede a tu dashboard**:
   - Render te dará una URL (ej. `https://tu-app.onrender.com`).
   - Abre la URL, inicia sesión con las credenciales de admin de tu Metabase local.

## Notas
- Este proyecto usa H2 (`metabase.db.mv.db`) para pruebas y no es persistente en Render entre despliegues.
- Los cambios en los dashboards no se guardan a menos que actualices manualmente el `metabase.db.mv.db` en el repositorio.
- Para producción, considera migrar a PostgreSQL (ver [Metabase docs](https://www.metabase.com/docs/latest/installation-and-operation/migrating-from-h2)).