#!/usr/bin/bash

rm -rf github-contributions-fetch
git clone -b main https://github.com/imananoosheh/github-contributions-fetch.git
mkdir github-contributions-fetch/public
cp .env github-contributions-fetch/.env
cd github-contributions-fetch
npm i && npm start



#   After project dockerized
#!/usr/bin/bash

git clone -b main https://github.com/imananoosheh/github-contributions-fetch.git
docker build -t "github-contributions-fetch:v1.0.0" .
docker run -p 3003:3003 -d --restart always github-contributions-fetch && watch docker ps
