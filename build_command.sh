export BUILD_DIR=`pwd`
export NGINX_INSTALLDIR=/opt/nginx
export VAR_DIR=/home/www/tmp
export LUAJIT_LIB=/usr/local/lib
export LUAJIT_INC=/usr/local/include/luajit-2.0

./configure \
--prefix=${NGINX_INSTALLDIR} \
--user=www \
--group=www \
--http-client-body-temp-path=${VAR_DIR}/client_body_temp \
--http-proxy-temp-path=${VAR_DIR}/proxy_temp \
--http-fastcgi-temp-path=${VAR_DIR}/fastcgi_temp \
--without-http_uwsgi_module \
--without-http_scgi_module \
--without-http_browser_module \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_sub_module \
--with-http_flv_module \
--with-http_gzip_static_module \
--with-http_gunzip_module \
--with-http_secure_link_module \
--with-http_stub_status_module \
--add-module=${BUILD_DIR}/ngx_devel_kit-0.3.1rc1 \
--add-module=${BUILD_DIR}/lua-nginx-module-0.10.13
