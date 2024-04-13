#!/bin/bash

latest=$(ls fastai -t | head -n 1)
file_num=${latest: -1}
file_int=$(expr "$file_num" + 1)

PATH_TO_FOLDER="XXX"

new_chapter="$PATH_TO_FOLDER/""${latest:0:-1}""$file_int"
echo "${new_chapter}"
mkdir "$new_chapter"
touch "$new_chapter""/questionaire.md"