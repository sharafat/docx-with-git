#!/bin/bash

RED_COLOR="\033[0;31m"
GREEN_COLOR="\033[0;32m"
NO_COLOR="\033[0m"

if [ $# -eq 0 ]
  then
    echo -e "${RED_COLOR} Usage: markdown-generator.sh <path/to/docx/file> ${NO_COLOR}"
    exit 1
fi

file="$1"
mdfile="${file%.docx}.md"

echo -e "\nCreating markdown copy of $file..."

start=$SECONDS

# convert .docx file to Markdown
w2m "$file" > "$mdfile" || {
  	echo -e "${RED_COLOR}Conversion to Markdown failed${NO_COLOR}"
   	exit 1
}

end=$SECONDS

echo -e "${GREEN_COLOR}Done creating markdown copy of $file; duration: $((end-start)) seconds.${NO_COLOR}"