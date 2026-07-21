#!/usr/bin/env bash

set -euo pipefail

git fetch --prune
git reset --hard '@{u}'

composer update --no-dev --no-interaction --prefer-dist --optimize-autoloader
php craft clear-caches/all
php craft up --interactive=0
