#!/bin/bash

cd ~/Sites/hugo-obsidian; setopt localoptions rmstarsilent; rm -fr ~/Sites/quartz/content/*; rm -rf ~/Sites/quartz/public/*; obsidian-export --frontmatter=always ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/bkb ~/Sites/quartz/content; go run ~/Sites/hugo-obsidian -input=/Users/brandonkboswell/Sites/quartz/content -output=/Users/brandonkboswell/Sites/quartz/data -index -root=/Users/brandonkboswell/Sites/quartz; (cd ~/Sites/quartz && hugo --minify)