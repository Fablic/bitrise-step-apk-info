#!/bin/bash
set -e

cd `dirname $0`

bundle update --bundler
BUNDLER_WITHOUT=test bundle install --jobs 20 --retry 5

bundle exec ruby "step.rb" -a "${apk_path}"
