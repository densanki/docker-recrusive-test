# Docker Recrusive Test

## Info

I wanted test if is possible to create a docker container in a docker container recrusive.

## Warning

**!!! DANGER !!!** 
This Docker file will work recrusive and can create very fast a lot of container from same image.
In our test in 1 min 100 Docker Container can be created
There no direct way to stop the all containers because they are so many.
Try in emergency STRG+C on Root Container or
``` 
docker stop the-one
```
After this the docker daemon must be stopped, because the subcontainer are possible to contiune the creation without root.
```
sudo systemctl start docker
sudo service docker stop

```

### Create Docker Image

```
docker build --tag=docker-recrusive-test .
```

#### Run Root Container

And the simplest way is to just expose the Docker socket to your sub container, by bind-mounting it with the -v flag.

```
docker run --name=the-one -v /var/run/docker.sock:/var/run/docker.sock docker-recrusive-test
```