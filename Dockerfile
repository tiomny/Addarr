FROM python:3.9.1-alpine

ENV PATH="/usr/local/bin:${PATH}"
RUN apk add --no-cache busybox-extras -v
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev cargo rust -v

WORKDIR /app
# Install requirements
# Copy files to container
COPY . /app
# Install ans build Addarr requirements, make symlink to redirect logs to stdout
RUN pip install --no-cache-dir -r requirements.txt --upgrade

ENTRYPOINT ["python", "/app/addarr.py"]
