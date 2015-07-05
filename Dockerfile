FROM tutum/apache-php:latest

RUN apt-get update &&\

    apt-get install -y curl libcurl3 libcurl3-dev php5-curl  && \
    cd /tmp && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y build-essential nodejs && \
    npm install --global gulp && \

    apt-get install -y git cron vim &&\

    apt-get clean && rm -rf /var/lib/apt/lists/*




#COPY /wp-gulp-cron.sh /bin

ENV LANG="en_US.UTF-8"

ENV ALLOW_OVERRIDE=null

# Set working directory
WORKDIR /app
