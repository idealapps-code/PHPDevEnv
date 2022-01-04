FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN echo "Asia/Tbilisi" > /etc/localtime
RUN apt install -y apache2
RUN apt install -y \
    libapache2-mod-php7.4 \
    php7.4-bcmath \
    php7.4-bz2 \
    php7.4-cli \
    php7.4-curl \
    php7.4-gd \
    php7.4-imap \
    php7.4-intl \
    php7.4-json \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-opcache \
    php7.4-soap \
    php7.4-sqlite3 \
    php7.4-xml \
    php7.4-xmlrpc \
    php7.4-zip \
    zip \
    wget \
    npm \
    git

RUN wget https://getcomposer.org/installer
RUN php ./installer --install-dir=/usr/local/bin --filename=composer
RUN rm -rf ./installer

CMD apache2ctl -DFOREGROUND