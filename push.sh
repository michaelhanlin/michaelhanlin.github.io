#!/bin/sh

git pull

git add .
git commit -m "Update at $(date) on $(hostname)"
git push

