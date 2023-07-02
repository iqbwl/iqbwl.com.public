# add
git add .

# commit

printf "\033[0;32mCommit files...\033[0m"

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

printf "\033[0;32mPush to GitHub...\033[0m"
# push
git push gh master

exit 0
