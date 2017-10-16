## Example of Docker multi-stage build

1. Build the container image
```bash
$ docker build -t artemmkin/hello-world:latest .
```
2. Check the built image size
```bash
$ docker images | grep artemmkin/hello-world

artemmkin/hello-world   latest              08e186387598        14 minutes ago       10.1MB
```
3. Run a container from the image
```bash
$ docker run -d -p 8000:8000 --rm --name hello-app artemmkin/hello-world
```
4. Check that the application works
```bash
$ curl localhost:8000
```
5. Clean up
```bash
$ docker stop hello-app
```

## Compare to the one container build

1. Build the container image
```bash
$ docker build -t artemmkin/hello-world:latest . -f Dockerfile.onebuild
```
2. Check the built image size
```bash
$ docker images | grep artemmkin/hello-world

artemmkin/hello-world   latest              964ba43fcec3        9 seconds ago       740MB
```
