cd homesite

python manage.py runserver 0.0.0.0:8000


uvicorn homesite.asgi:application --reload --host 0.0.0.0 --port 80