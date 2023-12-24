#!/bin/sh
json='audiolist = ['
for day in $(seq 0 9); do
	line=''
	for file in audio$day*.mp3; do
		line+=$(printf '"%s", ' "$file")
	done
	json+=$(printf '[%s],\n' "$line")
done
json+=']'
echo "$json" > audiolist.js
