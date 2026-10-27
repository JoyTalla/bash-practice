#!/bin/bash
if [ -z "$1" ]; then
	echo "Please give me a name. Example: ./greet2.sh Sam"
	exit 1
fi
name="$1"
echo "Hello, $name!"

