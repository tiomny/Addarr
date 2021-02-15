FROM python:3.9.1

ENV PATH="/usr/bin:${PATH}"
RUN apt update
RUN apt install -y apt-utils
RUN apt install -y gcc musl-dev libffi-dev libssl-dev cargo rustc

WORKDIR /app
# Install requirements
# Copy files to container
COPY . /app
# Install ans build Addarr requirements, make symlink to redirect logs to stdout
RUN pip install --no-cache-dir -r requirements.txt --upgrade

ENTRYPOINT ["python", "/app/addarr.py"]
