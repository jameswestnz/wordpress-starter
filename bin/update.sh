# move to the parent directory
DIR=$(readlink -f $(dirname $(dirname “$0”)))
cd ${DIR}

# reset to latest remote
git fetch --all
git reset --hard origin/master

# update all submodules
git submodule update --init --recursive

# add wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# run init
bin/init.sh
