#!/bin/bash

git config --global pull.rebase false
git config --global user.name "your-username"
git config --global user.email "your-email@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=31536000'
