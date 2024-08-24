# Introduction
Quick setup for my ubuntu installation.

# HOW TO USE
```
sudo chmod +x install-software.sh
sudo ./install-software.sh
```

# HOW TO TEST
How to test with docker
```
Prerequisites :
    docker
```
```
sudo docker build -t ubuntu-setup .
sudo docker run --name ubuntu-setup ubuntu-setup
```

# BUILD IMAGE FROM DOCKERFILE
```
sudo docker build -t ubuntu-setup .
```
# CREATE CONTAINER FROM BUILT IMAGE
```
sudo docker run --name ubuntu-setup ubuntu-setup
```

# REMOVE IMAGE
```
sudo docker rmi ubuntu-setup
```
