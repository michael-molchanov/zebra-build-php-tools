FROM michaeltigr/zebra-php-base:latest

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

USER root

# Install nodejs and grunt.
RUN apk add --update --no-cache nodejs nodejs-npm nodejs-dev yarn \
  && rm -rf /var/cache/apk/* \
  && npm install -g gulp-cli grunt-cli \
  && grunt --version \
  && gulp --version \
  && yarn versions

# Install compass.
RUN apk add --update --no-cache ruby ruby-dev \
  && rm -rf /var/cache/apk/* \
  && gem install --no-ri --no-rdoc compass
