#!/bin/sh

if ! errmsg=$(nvm); then . ~/.nvm/nvm.sh; fi

echo "Building with webpack."
if ! errmsg=$(nvm exec 16 npm run build 1>&2); then exit 1; fi

echo "Testing on node"
if ! errmsg=$(nvm exec $TRAVIS_NODE_VERSION node tests 1>&2); then exit 1; fi

exit 0
