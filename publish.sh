#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

rm -rf pages
git clone -b gh-pages \
    git@github.com:diwakergupta/thrift-missing-guide.git pages
mv index.html thrift.pdf pages

pushd pages
git config user.name "Diwaker Gupta"
git config user.email diwakergupta@gmail.com
git add index.html thrift.pdf
git commit -m Update
git push origin HEAD:gh-pages
popd

rm -rf pages
