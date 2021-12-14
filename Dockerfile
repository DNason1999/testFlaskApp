FROM python:3.10

RUN apt-get update && \
    apt-get install --no-install-recommends -yq \
    bash \
    build-essential \
    bzip2 \
    curl \
    software-properties-common \
    vim \
    wget \
    xclip \
    unzip && \
    # clean cache
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN /usr/local/bin/python -m pip install -r requirements.txt