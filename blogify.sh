#!/usr/bin/sh

date=$(date '+%Y-%m-%d')
exampleBlog=blog/example-blog.md

cp $exampleBlog blog/$date-$1.md

exit