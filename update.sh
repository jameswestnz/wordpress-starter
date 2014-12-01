DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${DIR}
git fetch --all
git reset --hard origin/master
git submodule update --init --recursive
chmod -R 605 .
rm -rf skel/public/wp.symlink
if [ ! -h skel/public/wp ] 
then
	ln -s ${DIR}/wp skel/public/wp
fi
rm -rf skel/public/site/themes/twentyfourteen.symlink
if [ ! -h skel/public/site/themes/twentyfourteen ] 
then
	ln -s ${DIR}/wp/wp-content/themes/twentyfourteen skel/public/site/themes/twentyfourteen
fi