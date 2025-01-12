#!/bin/bash
git add .
CommitMessage=$(date)
git commit -m "$CommitMessage"
git push -u origin main
git subtree split --prefix public -b hostinger-deploy
git push origin hostinger-deploy:hostinger --force
git branch -D hostinger-deploy
read -n 1 -s -r -p "Press any key to continue"
exit
