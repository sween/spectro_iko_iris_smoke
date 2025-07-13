mkdir gh-pages && cd gh-pages
git init
helm repo index . --url https://sween.github.io/spectro_iko_iris_smoke
git add index.yaml
git commit -m "Add Helm repo index"
git branch -M gh-pages
git remote add origin https://github.com/sween/spectro_iko_iris_smoke.git
git push -u origin gh-pages