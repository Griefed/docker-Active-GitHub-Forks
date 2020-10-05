# docker-Active-GitHub-Forks
https://github.com/techgaun/active-forks in a container!

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
Simply put the Dockerfile in a directory called `active-github-forks`, edit your `docker-compose.yml`:
```
  active-github-forks:
    container_name: active-github-forks
    build: ./active-github-forks/
    restart: unless-stopped
    ports:
      - 80:80
```
Then build with:
```
docker-compose up -d --build active-github-forks
```
![Active-Github-Forks](https://github.com/techgaun/active-forks/blob/master/screenshot.png)
