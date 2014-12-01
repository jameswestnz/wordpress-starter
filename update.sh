DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${DIR}
git fetch --all
git reset --hard origin/master
git submodule update --init --recursive
chmod -R 605 .
rm -rf skel/wp.symlink
ln -s ${DIR}/wp skel/wp
rm -rf skel/public/sites/themes/twentyfourteen.symlink
ln -s ${DIR}/wp/wp-content/themes/twentyfourteen skel/site/themes/twentyfourteen