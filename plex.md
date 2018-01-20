```
docker run \
-d \
--name plex \
--network=host \
-e TZ="MNT" \
-e PLEX_CLAIM="<claimToken>" \
-v ~/plex-config:/config \
-v /tmp:/transcode \
-v ~/plex-data:/data \
plexinc/pms-docker
```
