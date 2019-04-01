FROM python:3.5

RUN apt-get update \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get install git \

   && git clone https://github.com/pigliangliang/untitled56.git

RUN pip install django

WORKDIR ./untitled56

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
