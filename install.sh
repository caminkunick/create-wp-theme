apt-get update && apt-get -qq install -y unzip wget git

wget -O wp.zip https://wordpress.org/latest.zip

unzip wp.zip && rm wp.zip

mv wordpress/* . && rm -rf wordpress

chmod -R 777 wp-content