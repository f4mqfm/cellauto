#!/bin/bash
set -e

rm -rf deliver
mkdir -p deliver/admin deliver/api deliver/www

rsync -av --exclude '.git' --exclude 'docs' --exclude 'szakdolgozat' admin/ deliver/admin/
rsync -av --exclude '.git' --exclude 'docs' api/ deliver/api/
rsync -av --exclude '.git' --exclude 'docs' www/ deliver/www/
