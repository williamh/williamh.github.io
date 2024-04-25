#!/usr/bin/env bash

# https://github.com/showdownjs/showdown
# if ! command -v showdown >& /dev/null; then
#   npm install -g showdown
# fi
# showdown makehtml < ./resume.md > ./index.html

# https://www.linode.com/docs/guides/how-to-use-python-markdown-to-convert-markdown-to-html/
if ! pip freeze | grep -q markdown; then
	pip install --upgrade markdown
fi

python ./md2html.py

git add ./index.html
git commit -m "site: update index.html from resume.md"
