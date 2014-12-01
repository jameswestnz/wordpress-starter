# move to the parent directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )
cd ${DIR}

# reset to latest remote
git fetch --all
git reset --hard origin/master

# update all submodules
git submodule update --init --recursive

# run init
cd bin
./init.sh