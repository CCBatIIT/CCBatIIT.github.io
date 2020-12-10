# For mypages.iit.edu
cp _config_IIT.yml _config.yml
JEKYLL_ENV=production bundle exec jekyll build
rsync -Cuavz /Users/dminh/Documents/GitHub/ccbatiit.github.io/_site/ dminh@myftp.iit.edu:/home/dminh/www/
