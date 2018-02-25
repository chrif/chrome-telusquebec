FROM chrif/php

RUN apk --update add imagemagick zip && \
    rm -rf /var/cache/apk/*
