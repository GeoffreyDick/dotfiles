#!/usr/bin/bash -i

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

if command -v bun &> /dev/null; then
  else
else
  curl -fsSL https://bun.sh/install | bash
fi

for script in ./scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR
