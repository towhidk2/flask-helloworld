pip3 install -r requirements.txt

docker build -t my-app .
docker run -p 3003:3003 my-app


gunicorn --bind=0.0.0.0 --workers=2 main:app


