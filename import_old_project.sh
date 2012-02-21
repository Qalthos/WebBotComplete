#!/bin/bash
# This script will assist in moving an old TG2 project from a git repo onto the
# OpenShift Framework put together by Luke Macken.

proj="tg2app"
pack="tg2app"

read -p "Enter project name [$proj]: " -e temp
if [ -n "$temp" ]
then
    proj="$temp"
fi
read -p "Enter package name [$pack]: " -e temp
if [ -n "$temp" ]
then
    pack="$temp"
fi
read -p "Enter git repository to use: " -e repo

# Pull the existing repository as a submodule.
# Must be done first as it needs a clean tree.
#git subtree add -P "wsgi/$proj" "$repo"
#mv openshift.ini wsgi/$proj/

# Modify important files.
sed -e "s|wsgi/tg2app|wsgi/$proj|g" -e "s|tg2app/public|$pack/public|g" \
    -i .openshift/action_hooks/build
sed -e "s|wsgi/tg2app|wsgi/$proj|g" -i .openshift/action_hooks/deploy
sed -e "s|tg2app|$proj|g" -i wsgi/application
sed -e "s|tg2app|$proj|g" -i wsgi/tg2app/openshift.ini

# Remove the existing wsgi/tg2app directory to avoid confusion.
mv wsgi/tg2app/openshift.ini "wsgi/$proj"
rm -r wsgi/tg2app

patch "wsgi/$proj/$pack/config/app_cfg.py" < app_cfg.patch
