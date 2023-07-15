#!/bin/bash

pr_id=$1

git_url="git@github.com:UnityHPC/unity-web-portal.git"
clone_path=pr$pr_id

git clone $git_url $clone_path

cd $clone_path

# Checkout PR
gh pr checkout $pr_id

# Initial Setup
composer update
cd tools/docker-dev

./build.sh
