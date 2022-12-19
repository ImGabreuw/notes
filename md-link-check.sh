#!/bin/bash
find . -name \*.md -print0 | xargs -0 -n1 markdown-link-check --config ./md-link-check-config.json