
# USAGE

1. Build sc2-pcr docker image
```shell
sh build.sh
```

2. Run docker container with `CODE_PATH` which is the location of the cloned repo and optionally `DATA_PATH` that mounts a volume to the docker container where your data is located
```shell
sh run.sh CODE_PATH DATA_PATH
```

3. Attach to container:
```shell
docker exec -it sc2-pcr-container /bin/bash
```

4. Initialize conda env (potentially need to close and reopen new terminal after this) and activate it:
```shell
conda init
conda activate SC2_PCR 
```

