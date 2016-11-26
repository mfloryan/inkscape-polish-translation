# Docker for Inskcape work

Docker container that can compile *inkscape* from source and be used to run it.

## How to

Build the docker container.

`docker build -t inkscape:dev docker/`

Run the container mapping volumes and network ports

`docker run --name inkscape-i18n -v source/:/inkscape/source -i -t inkscape:dev`