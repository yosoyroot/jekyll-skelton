#!/bin/bash

# Exit if no title argument provided
if [ -z "$1" ]; then
  echo "Usage: ./post_a_blog.sh <title>"
  exit 1
fi

# Get current system date in yyyy-mm-dd format
date=$(date +"%Y-%m-%d")

# Use first argument as title for filename (replace spaces with dashes)
title="${1// /-}"

# Create new markdown file with specified name and add some sample text
cat <<EOF > "$date-$title.md"
---
layout: post
tags:
---
Entry here

EOF

echo "File created: $date-$title.md"