## Base image for docker-based apps

This is a simple base image to be used in conjunction with the great platform docker.

Get more information about [docker](http://docs.docker.com/).

##  Derivation

This image is derived from the superb phusion/baseimage, that is handling lots of stuff for you in the background so you can just get started building your infrastructure. For details be sure to check out [this](http://phusion.github.io/baseimage-docker/).

## What's happening inside?

* set env vars: DEBIAN_FRONTEND=noninteractive, INITRD=No, TERM=dumb
* set the timezone to "Europe/Berlin"
* set default locale to "en"
* install some basic packages: git, curl, zsh
* set zsh as default login shell
* create a www-data user with no home
* clean up after ourselves

I' am lazy so I added a build script with the creative title build, which just calls:
```shell
$docker build -t mychiara/webbase .
```
