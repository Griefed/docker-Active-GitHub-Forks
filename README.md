# docker-Active-GitHub-Forks
https://github.com/techgaun/active-forks in a container!

![Docker Pulls](https://img.shields.io/docker/pulls/griefed/active-github-forks?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/griefed/active-github-forks?label=Image%20size&sort=date&style=flat-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/griefed/active-github-forks?label=Docker%20build&style=flat-square)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/griefed/active-github-forks?label=Docker%20build&style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/Griefed/docker-Active-GitHub-Forks?label=GitHub%20Stars&style=social)
![GitHub forks](https://img.shields.io/github/forks/Griefed/docker-Active-GitHub-Forks?label=GitHub%20Forks&style=social)

Creates a Container which runs [techgaun's](https://github.com/techgaun) [Active GitHub Forks](https://github.com/techgaun/active-forks), with [httpd:alpine](https://hub.docker.com/_/httpd) as the base image, as seen on https://techgaun.github.io/active-forks/index.html

# Deploy with docker-compose:
```
  active-github-forks:
    container_name: active-github-forks
    image: griefed/active-github-forks
    restart: unless-stopped
    ports:
      - 80:80
```
### Deploy on Rasbperry Pi
Using the Dockerfile, this container can be built and run on a Raspberry Pi, too! I've tested it on a Raspberry Pi 3B+.
Simply put the Dockerfile in a directory called `active-github-forks` in the same directory as your docker-compose.yml, edit your docker-compose.yml:
```
  active-github-forks:
    container_name: active-github-forks
    build: ./active-github-forks/
    restart: unless-stopped
    ports:
      - 80:80
```
Then build with:

`docker-compose up -d --build active-github-forks`

![Active-Github-Forks](https://github.com/techgaun/active-forks/blob/master/screenshot.png)
