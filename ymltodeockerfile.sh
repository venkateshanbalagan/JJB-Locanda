#!/bin/bash
w=$(tac compose.yml| grep -m 1 '.')
w="${w#"${w%%[![:space:]]*}"}"
w="${w%"${w##*[![:space:]]}"}"
sed -i -e "s/NAME/$w/g" Dockerfile
