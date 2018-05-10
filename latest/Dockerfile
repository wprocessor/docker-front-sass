FROM mhart/alpine-node:7

MAINTAINER Valeriy Kozhevnikov

VOLUME /work
WORKDIR /work

ENV NPM_PACKAGES "breakpoint-sass \
  browser-sync \
  chroma-sass \
  del \
  eslint \
  event-stream \
  gulp \
  gulp-autoprefixer \
  gulp-cached \
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
  glob \
  sass-lint \
  typey"

RUN set -e \
  && apk add --no-cache git make g++ python \
  && npm install -g \
    $NPM_PACKAGES \
  && apk del --no-cache --purge make g++ python \
  && rm -rf /root/.npm /root/.config /tmp/npm*

COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
