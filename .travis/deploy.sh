#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
    mv public /tmp/public
    git checkout master
    rm *
    cp -r /tmp/public/* .
    git add .
    git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
    git status
    ls
    find .
}

upload_files() {
  git remote add origin-master https://${REPO_TOKEN}@github.com/michaelhanlin/michaelhanlin.github.io.git > /dev/null 2>&1
  #git push --quiet --set-upstream origin-master master
}

setup_git
commit_website_files
upload_files