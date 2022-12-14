docker build -t vue-web:1.0 .

docker run -d -p 8080:8080 --name vue-web-v1 vue-web:1.0
