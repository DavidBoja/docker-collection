

1. Build spinnet docker image
```shell
sh build.sh
```

2. Run docker container with `CODE_PATH` which is the location of the cloned repo and optionally `DATA_PATH` that mounts a volume to the docker container where your data is located
```shell
sh run.sh CODE_PATH DATA_PATH
```

3. Attach to container:
```shell
docker exec -it spinnet-container /bin/bash
```

4. Run additional setup inside the container:
```shell
sh run_inside_docker.sh
```

NOTE: If the script `run_inside_docker.sh` does not work, run it line by line in the terminal. Potentially you might need to re-open the temrinal after `conda init`.

