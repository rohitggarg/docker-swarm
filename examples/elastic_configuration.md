### Plugin Configuration

* URL: https://bootstrap:10001/go
* Auto Timeout: 5
* Docker Containers: 3
* Docker URI: https://bootstrap:2376
* Docker CA: bootstrap://.docker/ca.pem
* Docker Client Key: bootstrap://.docker/key.pem
* Docker Client Cert: bootstrap://.docker/cert.pem

### Elastic Agent Profile

* ID: gocd-alpine
* Docker Image: gocd/gocd-agent-alpine-3.5:v17.8.0
* Memory Soft: 512MB
* Memory Hard: 1024MB
* Environment Variables: JAVA_HOME=/usr/lib/jvm/default-jvm

