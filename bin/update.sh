# move to the parent directory
DIR=$(readlink -f $(dirname $(dirname “$0”)))
cd ${DIR}

# reset to latest remote
git fetch --all
git reset --hard origin/master

# update all submodules
git submodule update --init --recursive

# run init
bin/init.sh