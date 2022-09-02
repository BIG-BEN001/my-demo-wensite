# Base imge
FROM python:slim-buster

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

# Working Directory
WORKDIR /website

RUN python -m venv denv

# Installing Dependencies
COPY requirements.txt /website/

# RUN pip install -r requirements.txt

RUN pip install virtualenv && virtualenv install --system && pip install -r requirements.txt

# Copy project files and directories
COPY . /website/