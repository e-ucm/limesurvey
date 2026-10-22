FROM martialblog/limesurvey:${DOCKER_LIMESURVEY_VERSION}

COPY patches /patches

RUN for p in /patches/*.patch; do \
      echo "Applying $p"; \
      patch -p0 -d /var/www/html < "$p"; \
    done