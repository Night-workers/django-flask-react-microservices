FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /django
COPY requirements.txt /django/
RUN pip install --user -r requirements.txt
COPY . /django/
CMD python manage.py runserver 0.0.0.0:8000