你好！
很冒昧用这样的方式来和你沟通，如有打扰请忽略我的提交哈。我是光年实验室（gnlab.com）的HR，在招Golang开发工程师，我们是一个技术型团队，技术氛围非常好。全职和兼职都可以，不过最好是全职，工作地点杭州。
我们公司是做流量增长的，Golang负责开发SAAS平台的应用，我们做的很多应用是全新的，工作非常有挑战也很有意思，是国内很多大厂的顾问。
如果有兴趣的话加我微信：13515810775  ，也可以访问 https://gnlab.com/，联系客服转发给HR。
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
