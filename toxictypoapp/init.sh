docker rm -f toxictypoapp
docker image rm toxictypoapp
docker build -t toxictypoapp -f Dockerfile-app --network thumbnailer .
docker run -d --name toxictypoapp -p 8084:8080 toxictypoapp

