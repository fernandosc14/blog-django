# Blog (Django)

Professional learning project built while following the Udemy course "Python 3 - do zero ao avançado".

This repository contains a small blog application implemented with Django. It was created as an exercise while taking the Udemy course mentioned above. The course instructor's GitHub: [@luizomf](https://github.com/luizomf).

## Overview

A compact blog platform implemented for learning purposes. The project demonstrates common Django patterns such as models, admin integration, templates, static/media handling, and optional Docker-based deployment.

This repository is intended for educational use and experimentation; it is not intended as a production-ready application.

## Course and credit

- Course: Python 3 - do zero ao avançado (Udemy)
- Instructor GitHub: [@luizomf](https://github.com/luizomf) (see the course for the instructor's resources and explanations)
- Course URL: https://www.udemy.com/course/python-3-do-zero-ao-avancado

## Features

- Django-based blog with posts, categories and attachments
- Admin customization and site setup utilities
- Static and media handling (tools and assets included)
- Docker and Docker Compose support for containerized development

## Tech stack

- Python + Django
- PostgreSQL (project includes database data and docker support)
- Docker / Docker Compose (optional)

## Prerequisites

- Python 3.8+ (recommended)
- pip
- (Optional) Docker & Docker Compose

Note: This repository contains two `requirements.txt` files (project root and inside `djangoapp/`). Use the one appropriate for the environment you run.

## Quick start — Docker (recommended for parity with development environment)

Open PowerShell in the repository root and run:

```powershell
docker-compose up --build -d
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py collectstatic --noinput
docker-compose exec web python manage.py createsuperuser  # optional
docker-compose logs -f web
```

Replace the `web` service name with the service defined in your `docker-compose.yml` if different.

## Quick start — Local (virtual environment)

```powershell
python -m venv .venv
.\.venv\Scripts\Activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
```

If the main `requirements.txt` does not meet the app's needs, check `djangoapp/requirements.txt`.

## Running tests

Run Django's test suite:

```powershell
python manage.py test
```

## Environment and configuration

Environment variables and Docker configuration files are placed under `dotenv_files/` and the repository root. Review them and adapt values (secrets, database credentials, media paths) before running in non-development environments.

## Project structure (top-level)

- `djangoapp/` — Django application and project code (manage.py, app packages)
- `project/` — Django project configuration (settings, wsgi, asgi)
- `web/` — built/static/media assets
- `data/` — example/database data (PostgreSQL data directory included)
- `scripts/` — helper scripts for development and deployment
- `dotenv_files/` — example environment files

## Contributing

This repository is primarily a personal learning project. If you'd like to contribute:

1. Open an issue to discuss the change.
2. Create a feature branch, make your changes, and open a pull request.

Keep changes small and focused. Add tests for new behavior where appropriate.

## License

No license file is included in this repository. If you intend to share or allow contributions, consider adding a LICENSE file (for example, MIT, Apache-2.0, or similar).

## Acknowledgements

This project was developed while following the Udemy course "Python 3 - do zero ao avançado". Many implementation choices and learning materials come from the course content and demonstrations. Instructor GitHub nickname: [@luizomf](https://github.com/luizomf).