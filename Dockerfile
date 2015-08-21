FROM webhippie/php-nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY yii2nginx.conf /etc/nginx/presets/default.conf
COPY setup /etc/s6/nginx/setup

ENV HOST_FRONT frontend.dev
ENV HOST_BACK backend.dev
ENV HOST_API api.dev