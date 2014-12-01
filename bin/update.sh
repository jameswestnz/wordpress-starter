# move to the parent directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )
cd ${DIR}

# reset to latest remote
git fetch --all
git reset --hard origin/master

# update all submodules
git submodule update --init --recursive

# fix all permissions
chmod -R 600 .
chmod -R 644 skel
chmod -R 655 wp wp-config.php

# remove symlink placeholders and setup symlinks
## wordpress
rm -rf skel/public/wp.symlink
if [ ! -h skel/public/wp ] 
then
	ln -s ${DIR}/wp skel/public/wp
fi

## twentyfourteen theme
rm -rf skel/public/site/themes/twentyfourteen.symlink
if [ ! -h skel/public/site/themes/twentyfourteen ] 
then
	ln -s ${DIR}/wp/wp-content/themes/twentyfourteen skel/public/site/themes/twentyfourteen
fi