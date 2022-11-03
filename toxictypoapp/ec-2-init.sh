docker rm -f toxictypoapp
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 644435390668.dkr.ecr.eu-central-1.amazonaws.com/dawid-toxictypoapp
docker push 644435390668.dkr.ecr.eu-central-1.amazonaws.com/dawid-toxictypoapp:latest
docker run -d --name toxictypoapp -p 80:8080 644435390668.dkr.ecr.eu-central-1.amazonaws.com/dawid-toxictypoapp:latest
