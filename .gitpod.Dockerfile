
FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y --no-install-recommends \
        tree \
        mediainfo \
        neofetch \
        ffmpeg \
        ibasound2-dev \
        libgtk-3-dev \
        libnss3-dev \
        curl \
        git \
        gnupg2 \
        unzip \
        wget \
        jq 

RUN curl -sO https://cli-assets.heroku.com/install.sh && bash install.sh && rm install.sh

RUN sudo rm -rf /var/lib/apt/lists/*