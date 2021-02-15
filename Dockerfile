FROM python:3.9.1-alpine

RUN apk add --no-cache strace
strace -f apk add curl 2>&1 | less

RUN apk upgrade
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev cargo rust

WORKDIR /app
# Install requirements
# Copy files to container
COPY . /app
# Install ans build Addarr requirements, make symlink to redirect logs to stdout
RUN pip install --no-cache-dir -r requirements.txt --upgrade

ENTRYPOINT ["python", "/app/addarr.py"]
