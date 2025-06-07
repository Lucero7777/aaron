FROM python:3.10-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
RUN pip install Django
RUN pip install djangorestframework
RUN pip install --upgrade pip

RUN mkdir /hello
WORKDIR /hello
COPY . /hello/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]