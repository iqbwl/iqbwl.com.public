# add
git add .

# commit

printf "\033[0;32mCommit files...\033[0m"
printf '%.0s\n'

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

printf "\033[0;32mPush to GitHub Pages...\033[0m"
printf '%.0s\n'

# push
git push gh master

exit 0
