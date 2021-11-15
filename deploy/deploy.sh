[ -z "$PAULRHAYES_EMAIL" ] && echo "Need to set PAULRHAYES_EMAIL" && return;

# Run build script
nvm use; npm run build

# Adds date into config
# http://stackoverflow.com/questions/8822097/
# http://stackoverflow.com/questions/15870480/
# http://stackoverflow.com/questions/525592/
echo "Adding new build number and email address"
sed -i -e "s/email\:.*/email\: '$PAULRHAYES_EMAIL',/" app/_data/app.js
sed -i -e "s/site_build\:.*/site_build\: '`date +%s`'/" app/_data/app.js

echo "Copying htaccess file into public directory"
cp .htaccess public/

echo "Syncing to server"
rsync -rvSz --delete-after --exclude-from='deploy/exclude.txt' public/ paulrhayes:paulrhayes.com/

echo "Reverting build number and email address"
sed -i -e "s/email\:.*/email\: 'example@example.com',/" app/_data/app.js
sed -i -e "s/site_build\:.*/site_build\: 'dev'/" app/_data/app.js
rm app/_data/app.js-e
