# Ruby
echo "[Install Lang. Reqs.] Installing Ruby dependencies..."
yay -S libyaml
echo "[Install Lang. Reqs.] Installed Ruby dependencies."

# Erlang
echo "[Install Lang. Reqs.] Installing Erlang dependencies..."
yay -S ncurses glu mesa wxwidgets-gtk3 libpng libssh unixodbc libxslt fop
echo "[Install Lang. Reqs.] Installed Erlang dependencies."

# PHP
echo "[Install Lang. Reqs.] Installing PHP dependencies..."
yay -S autoconf bison gettext gd libcurl-openssl-1.0 libedit icu libjpeg-turbo libmysqlclient libogg oniguruma libpng postgresql-libs readline sqlite openssl libxml2 libzip re2c zlib freetype2 automake krb5 libiconv
echo "[Install Lang. Reqs.] Installed PHP dependencies."
