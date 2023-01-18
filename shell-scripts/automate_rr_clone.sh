#!/bin/bash

echo  enter the original/old  repo url 
read upstream_var
echo  Create a local repository in the temp-dir directory
read temp_dir

git clone $upstream_var $temp_dir  
cd $temp_dir
echo lists all the branch in current old repo
git branch -a

echo read the branch that needed to be copied
read branch_name

echo Checkout all the branches that you want to copy from ORI to NEW repo
git checkout $branch_name


echo  fetch all the tags from ORI
git fetch --tags

echo check your local tags and branches
git tag
git branch -a

echo clear the link to the ORI repository with the following command:
git remote rm origin

echo enter new reop url
read new_repo_url

echo link your local repository to your newly created NEW repository 
git remote add origin $new_repo_url

echo push all your branches and tags
git push origin --all
git push --tags
