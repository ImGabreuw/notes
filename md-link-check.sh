#!/bin/bash
find . -name \*.md -print0 | xargs -0 -n1 markdown-link-check -p -q --config ./md-link-check-config.json