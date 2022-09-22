To build and deploy to the public Docker repository

````
docker build --no-cache -t tycho:current .

docker tag tycho:current cientopolis/tycho:latest

docker tag tycho:current cientopolis/tycho:[commit-hash]

docker push cientopolis/tycho:latest

docker push cientopolis/tycho:[commit-hash]
````

To deploy / run

````
sudo docker pull cientopolis/tycho:latest

sudo docker compose down

sudo docker compose up -d
````

