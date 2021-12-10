rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:Yichen-Amber/gulu-ui-3-website.git &&
git push -f -u origin master &&
cd -
echo https://yichen-amber.github.io/gulu-ui-3-website/index.html