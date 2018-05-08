echo "Deleting old public directory"
rm -rf public/

echo "Generating public directory"
node_modules/hexo/bin/hexo clean
node_modules/hexo/bin/hexo generate

echo "Syncing to repo"
rsync -rvSz --delete-after --exclude-from='deploy/export-exclude.txt' public/experiments/ ../paulrhayes.com-experiments/

cp public/css/experiment-styles.css ../paulrhayes.com-experiments/
