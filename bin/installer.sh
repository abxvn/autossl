#!bin/bash

curl https://raw.githubusercontent.com/tekuasia/autossl/master/dist/autossl -O

chmod +x autossl
mv autossl /usr/local/bin/autossl
/usr/local/bin/autossl init