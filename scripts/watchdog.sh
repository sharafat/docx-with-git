#!/bin/bash

RED_COLOR="\033[0;31m"
GREEN_COLOR="\033[0;32m"
NO_COLOR="\033[0m"

for file in `ls | grep "\.docx$" | grep -v "~$.*\.docx$"`
do
    python scripts/when-changed "$file" ./scripts/markdown-generator.sh "$file"
done
