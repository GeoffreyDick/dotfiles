#!/usr/bin/bash -i

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

curl -fsSL https://bun.sh/install | bash

for script in ./scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR
