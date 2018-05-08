[ -z "$PAULRHAYES_EMAIL" ] && echo "Need to set PAULRHAYES_EMAIL" && return;

echo "Deleting cache and old public directory"
node_modules/hexo/bin/hexo clean

# Adds date into config
# http://stackoverflow.com/questions/8822097/
# http://stackoverflow.com/questions/15870480/
# http://stackoverflow.com/questions/525592/
echo "Adding new build number"
sed -i -e "s/site_build\:.*/site_build\: `date +%s`/" _config.yml
sed -i -e "s/site_email\:.*/site_email\: $PAULRHAYES_EMAIL/" _config.yml

echo "Generating public directory"
node_modules/hexo/bin/hexo generate

echo "Minifying JS"
node_modules/.bin/uglifyjs public/js/master.js --output public/js/master.js

echo "Minifying CSS"
node_modules/.bin/node-sass public/css/master.css public/css/master.css --output-style compressed

echo "Copying htaccess file into public directory"
cp themes/paulrhayes/source/.htaccess public/

# Remove matching line then 4 following lines
# Create temporary file then overwrite original
# http://stackoverflow.com/questions/8019617/
# http://unix.stackexchange.com/questions/56123/
echo "Removing unwanted pages from sitemap"
awk '/contact\/index.html/{n=7}; n {n--; next}; 1' public/sitemap.xml > sitemap.tmp && mv sitemap.tmp public/sitemap.xml
awk '/404.html/{n=7}; n {n--; next}; 1' public/sitemap.xml > sitemap.tmp && mv sitemap.tmp public/sitemap.xml
# GNU enabled sed would use:
#sed -e '/\/contact\/index.html/,+5d' public/sitemap.xml
#sed -e '/\/404.html/,+5d' public/sitemap.xml

echo "Syncing to server"
rsync -rvSz --delete-after --exclude-from='deploy/exclude.txt' public/ paulrhayes:paulrhayes.com/

echo "Reverting build number"
sed -i -e "s/site_build\:.*/site_build\: local/" _config.yml
sed -i -e "s/site_email\:.*/site_email\:/" _config.yml
rm _config.yml-e

echo "Deleting cache and old public directory"
node_modules/hexo/bin/hexo clean
