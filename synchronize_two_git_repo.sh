#!/bin/bash

repo1="https://github.com/kaa-serpent/script_synchronise_two_repo_git"
repo2="https://github.com/kaa-serpent/script_synchronise_two_repo_git"

echo ""
if [[ "$PWD" = */script_synchronize_two_repo_git ]]; then
  cd ../
  echo folder exist
else
  echo folder do not exist, cloning folder ...
  git clone ${repo1}
fi

cd "$PWD"/db-planr
git remote add lab ${repo2}
echo "****** Pull gitHub ******"
git pull origin master
echo "******************************************"
echo"**** Pushing to GitLab ****"
git push lab master
echo"done"
