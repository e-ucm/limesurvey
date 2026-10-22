FROM martialblog/limesurvey:7.5.1-261021-apache

COPY patches /patches

RUN for p in /patches/*.patch; do \
      echo "Applying $p"; \
      patch -p0 -d /var/www/html < "$p"; \
    done