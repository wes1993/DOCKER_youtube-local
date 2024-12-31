FROM python:3.9

WORKDIR /localYT

COPY ./youtube_local/requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./youtube_local .

# EXPOSE 8080

CMD ["python3", "server.py", "--host", "0.0.0.0", "--port", "8080"]
