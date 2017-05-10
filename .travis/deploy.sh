#!/bin/sh

DEPLOY_DIR=.deploy_git

setup_git() {
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "Travis CI"

    git clone https://${REPO_TOKEN}@github.com/michaelhanlin/michaelhanlin.github.io.git $DEPLOY_DIR
    (cd $DEPLOY_DIR; git branch; git branch -a; git checkout master)
}

commit_website_files() {
    #mv public /tmp/public
    #git remote update
    #git checkout master
    #rm -fr *
    rm -fr $DEPLOY_DIR/*
    cp -r public/* $DEPLOY_DIR/
    cd $DEPLOY_DIR
    git add .
    git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
    git status
    ls
    find .
    #git remote add origin-master https://${REPO_TOKEN}@github.com/michaelhanlin/michaelhanlin.github.io.git > /dev/null 2>&1
    #git push --quiet --set-upstream origin-master master
}

setup_git
commit_website_files
