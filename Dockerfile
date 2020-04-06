FROM centos:7

RUN yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y \
    openssh-clients \
    git \
    zip \
    gettext \
    php71-php-cli \
    php71-php-json \
    php71-php-gd \
    php71-php-gmp \
    php71-php-mbstring \
    php71-php-mcrypt \
    php71-php-mysqli \
    php71-php-opcache \
    php71-php-pdo \
    php71-php-pear \
    php71-php-pecl-imagick \
    php71-php-pecl-igbinary \
    php71-php-pecl-libsodium \
    php71-php-pecl-memcached \
    php71-php-pecl-mongodb \
    php71-php-pecl-msgpack \
    php71-php-pecl-mysql \
    php71-php-pecl-zip \
    php71-php-process \
    php71-php-soap \
    php71-php-xml \
    composer \
    && yum clean all

ENV PATH=/opt/remi/php71/root/usr/bin:/opt/remi/php71/root/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
ENV LD_LIBRARY_PATH=/opt/remi/php71/root/usr/lib64
ENV MANPATH=/opt/remi/php71/root/usr/share/man:
