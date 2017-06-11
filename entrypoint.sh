#!/bin/bash

echo "OS ready ..."

set -e

# source /usr/src/chatapp/

echo "check chatapp directory"
cd /usr/src/chatapp/
ls
echo "call app.js"
node app.js