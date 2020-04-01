FROM centos:7

RUN yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y \
    openssh-clients \
    git \
    zip \
    gettext \
    php73-php-cli \
    php73-php-json \
    php73-php-gd \
    php73-php-mbstring \
    php73-php-mcrypt \
    php73-php-mysqlnd \
    php73-php-opcache \
    php73-php-pdo \
    php73-php-pear \
    php73-php-pecl-imagick \
    php73-php-pecl-igbinary \
    php73-php-sodium \
    php73-php-pecl-memcached \
    php73-php-pecl-mongodb \
    php73-php-pecl-msgpack \
    php73-php-pecl-mysql \
    php73-php-pecl-zip \
    php73-php-process \
    php73-php-soap \
    php73-php-xml \
    composer \
    && yum clean all

ENV PATH=/opt/remi/php73/root/usr/bin:/opt/remi/php73/root/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
ENV LD_LIBRARY_PATH=/opt/remi/php73/root/usr/lib64
ENV MANPATH=/opt/remi/php73/root/usr/share/man:
