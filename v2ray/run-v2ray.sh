#!/bin/bash

export P="${0%/*}"
export P=`realpath ${P}`

docker run -it -d --rm \
    -v ${P}/v2ray-config.json:/etc/v2ray/config.json \
    --network=host \
    --name v2ray \
    v2fly/v2fly-core
