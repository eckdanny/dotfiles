#!/usr/bin/env bash

sleep 5

[[ -n $(command -v asciinema) ]] || ( echo "Missing 'asciinema'. Exiting" && exit 1 )
[[ -n $(command -v npx) ]] || ( echo "Missing 'npx'. Exiting" && exit 1 )
[[ -n $(command -v docker) ]] || ( echo "Missing 'docker'. Exiting" && exit 1 )

# asldkfjA
# asciinema rec .bitbucket/demo.cast



# export svg
# npx svg-term-cli --window --in wat.cast --out wat.svg

# export gif
# docker run --rm -v $PWD:/data asciinema/asciicast2gif -s 2 -S 1 wat.cast wat.gif
# echo $0j
# echo $(basename $0)
cache_dir=$ZSH_CACHE_DIR/$(basename $0)
printenv | grep ZSH

exit 0

mkdir -p $cache_dir
tmp_dir=$(mktemp -q -d $cache_dir/XXXXXX)
if [ $? -ne 0 ]; then
  echo "Error!"
  exit 1
fi

# echo $tmp_dir

asciinema rec $tmp_dir/demo.cast

rm -rf $tmp_dir
