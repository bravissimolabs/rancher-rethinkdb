#!/bin/sh

RETHINK_VERSION=2.3.6
GIDDYUP_VERSION=v0.19.0

set -e

if [ ! -e giddyup ]; then
    curl -L https://github.com/rancher/giddyup/releases/download/$GIDDYUP_VERSION/giddyup > giddyup
    chmod +x giddyup
fi

sed -i -e "s/FROM rethinkdb:.*/FROM rethinkdb:$RETHINK_VERSION/" Dockerfile

docker build --pull --tag bravissimolabs/rancher-rethinkdb:$RETHINK_VERSION .
