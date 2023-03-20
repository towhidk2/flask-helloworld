pip3 install -r requirements.txt

docker build -t my-app .
docker run -p 3003:3003 my-app



# go to azure cloud shell
git clone https://github.com/towhidk2/flask-helloworld.git
cd flask-helloworld
az webapp up -n mytestapp22
az webapp config set -g mytestrg -n mytestapp22 --startup-file startup.txt

