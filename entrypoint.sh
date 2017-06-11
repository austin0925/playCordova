#!/bin/bash

echo "OS ready ..."

set -e

# source /usr/src/chatapp/

echo "check chatapp directory"
ls /usr/src/chatapp/

echo "call app.js"
node /usr/src/chatapp/app.js