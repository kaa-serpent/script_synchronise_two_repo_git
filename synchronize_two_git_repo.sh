#!/bin/bash

repo1="https://github.com/kaa-serpent/script_synchronise_two_repo_git"
repo2="https://github.com/kaa-serpent/script_synchronise_two_repo_git"

echo ""
if [[ "$PWD" = */db-planr ]]; then
  cd ../
  echo folder exist
else
  echo folder do not exist, cloning folder ...
  git clone ${repoHub}
fi

cd "$PWD"/db-planr
git remote add lab ${repoLab}
echo "****** Pull gitHub ******"
git pull origin master
echo "******************************************"
echo"**** Pushing to GitLab ****"
git push lab master
echo"done"