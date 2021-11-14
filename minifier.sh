#!/bin/bash

######### HTML ##########
# for file in $(find $directory -type f -name "*.html" -not -name "*.min.html" -not -path "./static/admin/*")
# do 
#   echo $file
#   IFS='.' read -ra dummyHTML <<< "$file"
#   NAME_HTML=${dummyHTML[1]}
#   minify "."$NAME_HTML".html" > "."$NAME_HTML".min.html"
# done
########## CSS ##########
for file in $(find $directory -type f -name "*.css" -not -name "*.min.css" -not -name "font.css" -not -path "./static/admin/*")
do 
  echo $file
  IFS='.' read -ra dummyCSS <<< "$file"
  NAME_CSS=${dummyCSS[1]}
  minify "."$NAME_CSS".css" > "."$NAME_CSS".min.css"
done
########## JAVASCRIPT ##########
for file in $(find $directory -type f -name "*.js" -not -name "*.min.js" -not -path "./static/admin/*")
do 
  echo $file
  IFS='.' read -ra dummyJS <<< "$file"
  NAME_JS=${dummyJS[1]}
  minify "."$NAME_JS".js" > "."$NAME_JS".min.js"
done

IFS="^I"
# echo "$IFS" | cat -et
# find . -name "*.min.*" -type f -delete