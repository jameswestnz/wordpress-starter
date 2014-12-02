# move to the parent directory
DIR=$(readlink -f $(dirname $(dirname “$0”)))
cd ${DIR}

# fix all permissions
## prevent access to everything by default
chmod -R 600 .
## allow contents of ./skel to be copied - need read AND execute on directories
find ./skel -type d -exec chmod 601 {} \;
find ./skel -type f -exec chmod 604 {} \;
## allow files in ./wp to be read, and folders executed/searched
find ./wp -type d -exec chmod 601 {} \;
find ./wp -type f -exec chmod 604 {} \;

# remove symlink placeholders and setup symlinks
## wordpress
rm -rf skel/public/wp.symlink
rm -rf skel/public/wp
ln -s ${DIR}/wp skel/public/wp

## twentyfourteen theme
rm -rf skel/public/site/themes/twentyfourteen.symlink
rm -rf skel/public/site/themes/twentyfourteen
ln -s ${DIR}/wp/wp-content/themes/twentyfourteen skel/public/site/themes/twentyfourteen