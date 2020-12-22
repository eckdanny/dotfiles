# export PATH=$(dirname $0):${PATH}
# echo $ZSH_CACHE_DIR

# source "${0:h}/record-terminal.sh"

RECORD_TERMINAL_PLUGIN_DIR=${0:h}

function record-terminal {

  [[ -n $(command -v asciinema) ]] || ( echo "Missing 'asciinema'. Exiting" && exit 1 )
  [[ -n $(command -v docker) ]] || ( echo "Missing 'docker'. Exiting" && exit 1 )

  plugin_cache_dir=$ZSH_CACHE_DIR/$(basename $0)
  mkdir -p $plugin_cache_dir

  tmp_dir=$(mktemp -q -d $plugin_cache_dir/XXXXXX)
  if [ $? -ne 0 ]; then
    echo "error!"
    exit 1
  fi

  asciinema rec $tmp_dir/demo.cast

  clear && echo "Recorded in \`$tmp_dir/demo.cast\`"

  pushd $tmp_dir &>/dev/null
  if [[ -n $(command -v svg-term) ]]; then
    svg-term --window --in demo.cast --out demo.svg
  else
    [[ -n $(command -v npx) ]] || ( echo "Missing 'npx'. Exiting" && exit 1 )
    npx --package svg-term-cli svg-term --window --in demo.cast --out demo.svg
  fi

  [[ $? -eq 0 ]] && echo "Wrote: $PWD/demo.svg"
  
  popd &>/dev/null
  
  # read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  # echo "";
  # if [[ $REPLY =~ ^[Yy]$ ]]; then
  #   doIt;
  # fi
}

unset RECORD_TERMINAL_PLUGIN_DIR

