# move to the parent directory
DIR=$(readlink -f $(dirname $(dirname “$0”)))
cd ${DIR}

# fix all permissions
chmod -R 655 .
chmod -R 644 skel

# remove symlink placeholders and setup symlinks
## wordpress
rm -rf skel/public/wp.symlink
rm -rf skel/public/wp
ln -s ${DIR}/wp skel/public/wp

## twentyfourteen theme
rm -rf skel/public/site/themes/twentyfourteen.symlink
rm -rf skel/public/site/themes/twentyfourteen
ln -s ${DIR}/wp/wp-content/themes/twentyfourteen skel/public/site/themes/twentyfourteen