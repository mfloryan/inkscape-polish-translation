# Docker for Inskcape work

Docker container that can compile *inkscape* from source and be used to run it.

## How to

Build the docker container.

`docker build -t inkscape:dev docker/`

Run the container mapping volumes and network ports

`docker run --rm -p 15900:5900 -v (pwd)/source:/inkscape/source -i -t inkscape:dev`

Inside the container

If you are missing your locale do:

```sh
locale-gen pl_PL
locale-gen pl_PL.UTF-8
update-locale
```
