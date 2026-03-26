# Build & Deploy

## To build a new image (example)

```
./build.sh
docker image build -t mrdowden/node-chrome:25 .
```

## Deploy to Docker Hub

```
docker push mrdowden/node-chrome:25
```
