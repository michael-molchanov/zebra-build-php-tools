FROM michaeltigr/zebra-build-php-base:latest

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

USER root

# Install nodejs and grunt.
RUN apk add --update --no-cache nodejs nodejs-dev \
  && rm -rf /var/cache/apk/* \
  && npm install -g grunt-cli \
  && grunt --version

# Install compass.
RUN apk add --update --no-cache ruby ruby-dev \
  && rm -rf /var/cache/apk/* \
  && gem install --no-ri --no-rdoc compass
