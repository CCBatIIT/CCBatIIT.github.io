JEKYLL_ENV=production bundle exec jekyll build
rsync -Cuavz /Users/dminh/Documents/GitHub/ccbatiit.github.io/_site/ dminh@myftp.iit.edu:/home/dminh/www/
