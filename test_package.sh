#!/usr/bin/env sh
# Run the current script in a docker container
exec time docker run -v "$PWD:/repo:ro" --rm --entrypoint="" node:20 \
  sh -c 'git clone --recursive --no-remote-submodules --shallow-submodules /repo /dolos && cd /dolos && tail -n+5 test_package.sh | sh -'

### Docker script starts here
set -e

yarn install

for dir in core parsers lib web cli; do
  (cd $dir && yarn build && yarn pack)
done

mkdir /test
cd /test
cp -r /dolos/samples .
cp /dolos/*/*.tgz .
rm -rf /dolos/

npm install -g *.tgz
npm ls -g --all '@dodona/dolos'
dolos samples/javascript/simple-dataset.zip
