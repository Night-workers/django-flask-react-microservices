FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /flask
COPY requirements.txt /flask/
RUN pip install --user -r requirements.txt
COPY . /flask/
CMD python main.py