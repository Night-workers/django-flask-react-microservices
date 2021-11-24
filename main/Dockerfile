FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY /main/requirements.txt /app/requirements.txt
RUN pip install --user -r requirements.txt
COPY . /app
CMD [ "python", "main.py" ]