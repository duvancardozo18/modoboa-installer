FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-venv \
    git \
    curl \
    gnupg2 \
    sudo \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

CMD ["bash"]
