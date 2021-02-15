FROM python:3.9.1

RUN apt install -y gcc musl-dev libffi-dev openssl-dev cargo rust

WORKDIR /app
# Install requirements
# Copy files to container
COPY . /app
# Install ans build Addarr requirements, make symlink to redirect logs to stdout
RUN pip install --no-cache-dir -r requirements.txt --upgrade

ENTRYPOINT ["python", "/app/addarr.py"]
