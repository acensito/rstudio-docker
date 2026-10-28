# RStudio con Docker

Entorno de RStudio Server en Docker para estudiar y hacer tareas de R. Incluye los scripts del temario (variables, operaciones, fechas, vectores, matrices, dataframes, condicionales, bucles y funciones).

## Requisitos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/) (para clonar el repositorio)

## Uso

```bash
git clone https://github.com/acensito/rstudio-docker.git
cd rstudio-docker
docker compose up -d
```

Abre <http://localhost:8787> e inicia sesión:

- **Usuario:** `rstudio`
- **Contraseña:** la definida en `PASSWORD` dentro de [docker-compose.yml](docker-compose.yml) (por defecto `cambiame`; cámbiala).

Comandos útiles:

```bash
docker compose stop                    # parar el contenedor
docker compose up -d                   # arrancarlo de nuevo
docker compose up -d --force-recreate  # recrearlo tras cambiar el compose
docker compose down                    # eliminarlo (los volúmenes se conservan)
```

## Estructura

```
.
├── docker-compose.yml   # configuración del contenedor
└── proyectos/           # proyectos y carpetas de trabajo (se montan en ~/proyectos)
    ├── ejemplo/         # proyecto de ejemplo: ejemplo.R + datos_ejemplo/
    └── scripts_temario/ # scripts del temario
```

La carpeta `proyectos` está enlazada con el contenedor: lo que crees o edites en `~/proyectos` desde RStudio se guarda en tu equipo. Lo que quede fuera se pierde al recrear el contenedor.

## Configuración

| Variable | Descripción |
| --- | --- |
| `PASSWORD` | Contraseña del usuario `rstudio` |
| `DISABLE_AUTH` | `true` entra sin login (solo si el puerto está limitado a localhost) |
| `TZ` | Zona horaria (`Europe/Madrid`) |
| `ROOT` | `true` da permisos de `sudo` al usuario `rstudio`; normalmente no hace falta |

Por defecto el puerto solo es accesible desde el propio equipo (`127.0.0.1`). Para acceder desde otros equipos de la red, cambia la línea del puerto en el compose y usa una contraseña segura.

Los paquetes instalados con `install.packages()` y la configuración de RStudio se guardan en volúmenes de Docker (`r_libs`, `rstudio_config`) y sobreviven a recrear el contenedor.

## Subir el proyecto a GitHub

1. Crea un repositorio vacío en <https://github.com/new> (sin README, `.gitignore` ni licencia).
2. Desde la carpeta del proyecto:

```bash
git init
git add .
git commit -m "Primer commit: entorno RStudio con Docker"
git branch -M main
git remote add origin https://github.com/acensito/rstudio-docker.git
git push -u origin main
```

> Antes de subirlo, cambia la contraseña de `docker-compose.yml` por una que no uses en otros sitios, y no subas datos privados de la carpeta `proyectos/`.
