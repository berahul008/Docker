FROM ubuntu
RUN <<EOF
apt-get update;
apt-get install apache2 -y;
apt-get install unzip -y;
apt-get install curl -y;
curl -L -o spering.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/spering.zip;
unzip spering.zip -d /var/www/ ;
rm spering.zip;
mv -f /var/www/spering-html/* /var/www/html/ ;
rm -rf /var/www/spering-html;
rm -rf /var/lib/apt/lists/*;
EOF
WORKDIR /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
HEALTHCHECK CMD curl localhost
