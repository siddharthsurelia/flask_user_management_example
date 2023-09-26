FROM python:3.10.13

WORKDIR /app

EXPOSE 8080
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# CMD ["flask", "--app", "app", "--debug", "run", "--host=0.0.0.0", "--port=8080"]
CMD ["flask", "--app", "app", "run", "--host=0.0.0.0", "--port=8080"]