A alpine-php container for running yii2-advanced apps.

This replaces the /etc/nginx/presets/default.conf

It will replace the hostnames with the ENV variables HOST_FRONT and HOST_BACK



running in current directory

    docker run -d \
        -p 80:80 \
        -e HOST_FRONT=frontend.dev \
        -e HOST_BACK=backend.dev \
        -v $(pwd):/app:rw \
        wartron/alpine-php-yii2-advanced


running with nginx proxy and a local linked db

    docker run -d \
        -e VIRTUAL_HOST=frontend.dev,backend.dev \
        -e HOST_FRONT=frontend.dev \
        -e HOST_BACK=backend.dev \
        -v $(pwd):/app:rw \
        --link db:db \
        wartron/alpine-php-yii2-advanced