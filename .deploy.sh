#!/usr/bin/env bash

set -euo pipefail

git pull
composer install --no-interaction
php craft clear-caches/all
php craft up --interactive=0
