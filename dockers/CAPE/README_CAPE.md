

1. Build cape docker image
```shell
sh build.sh
```

2. Run docker container with `CODE_PATH` which is the location of the cloned repo and optionally `DATA_PATH` that mounts a volume to the docker container where your data is located
```shell
sh run.sh CODE_PATH DATA_PATH
```

3. Attach to container:
```shell
docker exec -it cape-container /bin/bash
```
