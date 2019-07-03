#!bin/bash

curl https://raw.githubusercontent.com/tekuasia/autossl/master/dist/autossl -O
chmod 700 autossl
mv autossl /usr/local/bin/autossl
autossl init