#!/bin/bash
name=$1

if [ -z "$name" ]; then
	echo "Usage $0 RepoName"
	exit
fi

curl -u 'mrwaim' https://api.github.com/user/repos -d "{\"name\":\"$name\"}" | grep ssh_url | perl -pe 's/"ssh_url":\s*//; s/^\s*"//; s/",$//'
