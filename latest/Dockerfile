FROM mhart/alpine-node:7

MAINTAINER Valeriy Kozhevnikov

VOLUME /work
WORKDIR /work

ENV NPM_PACKAGES "bower \
  breakpoint-sass \
  browser-sync \
  chroma-sass \
  del \
  eslint \
  event-stream \
  gulp \
  gulp-autoprefixer \
  gulp-cached \
  gulp-concat \
  gulp-eslint \
  gulp-if \
  gulp-load-plugins \
  gulp-rename \
  gulp-replace \
  gulp-sass \
  gulp-sass-lint \
  gulp-size \
  gulp-sourcemaps \
  gulp.spritesmith \
  node-sass-import-once \
  gulp-plumber \
  glob \
  sass-lint \
  support-for \
  typey"

RUN set -e \
  && apk add --no-cache git \
  && npm install -g \
    susy@2 \
    $NPM_PACKAGES \
  && rm -rf /root/.npm /root/.config /tmp/npm*

COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
