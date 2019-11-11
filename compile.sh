#!/bin/sh

docker exec -t pascal-compiler-container fpc -Co -Cr -Miso -gl $@