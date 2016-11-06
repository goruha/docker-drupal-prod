# from https://www.drupal.org/requirements/php#drupalversions
FROM goruha/drupal-base

RUN echo 'http://alpine.gliderlabs.com/alpine/edge/main' > /etc/apk/repositories && \
    echo 'http://alpine.gliderlabs.com/alpine/edge/community' >> /etc/apk/repositories && \
    echo 'http://alpine.gliderlabs.com/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update && apk add --update \
      php5-opcache \
      php5-apcu \
	  && rm -rf /var/cache/apk/*