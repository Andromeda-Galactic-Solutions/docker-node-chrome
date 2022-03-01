# mrdowden/node-chrome
## Forked from markhobson/node-chrome to gain control over Node versions

Docker image for Node.js automated UI tests.

Includes:

* JDK 8
* Node.js 12.x
* Chrome (latest)

Available on [Docker Hub](https://hub.docker.com/r/mrdowden/node-chrome/). When using the docker image select node version via tag, such as `mrdowden/node-chrome:12`. Published tags include node versions 10, 12, 14, and 16.

## Demo

See the [demo](demo) npm project to see how this Docker image can be used to run UI tests. The [run.sh](demo/run.sh) script builds the project within the latest version of this image on Docker Hub.
