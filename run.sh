#! /bin/sh

#sed -i.bak s/$old_container_port/$new_container_port/ /etc/nginx/sites-enabled/headlinie

(echo "upstream api { server $API_PORT_8000_TCP_ADDR:$API_PORT_8000_TCP_PORT; }" && cat /etc/nginx/sites-enabled/api.conf) > api.conf.new
mv api.conf.new /etc/nginx/sites-enabled/api.conf
(echo "upstream web { server $WEB_PORT_8000_TCP_ADDR:$WEB_PORT_8000_TCP_PORT; }" && cat /etc/nginx/sites-enabled/web.conf) > web.conf.new
mv web.conf.new /etc/nginx/sites-enabled/web.conf
nginx -c /etc/nginx/nginx.conf
