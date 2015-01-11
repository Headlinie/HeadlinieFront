#! /bin/sh

sed -i.bak s/API_PORT_8000_TCP_ADDR/$API_PORT_8000_TCP_ADDR/ /etc/nginx/sites-enabled/api.conf
sed -i.bak s/API_PORT_8000_TCP_PORT/$API_PORT_8000_TCP_PORT/ /etc/nginx/sites-enabled/api.conf

sed -i.bak s/WEB_PORT_8000_TCP_ADDR/$WEB_PORT_8000_TCP_ADDR/ /etc/nginx/sites-enabled/web.conf
sed -i.bak s/WEB_PORT_8000_TCP_PORT/$WEB_PORT_8000_TCP_PORT/ /etc/nginx/sites-enabled/web.conf

rm /etc/nginx/sites-enabled/web.conf.bak
rm /etc/nginx/sites-enabled/api.conf.bak

nginx -c /etc/nginx/nginx.conf
