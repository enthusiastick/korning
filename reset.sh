#!/bin/sh

git checkout master
rake db:drop db:create db:migrate db:seed
git checkout ebens_work
