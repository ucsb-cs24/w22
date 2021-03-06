#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

rvm install ruby-3.0.3
rvm use 3.0.3
gem install bundler 
gem install pkg-config
gem install nokogiri
# bundle config build.nokogiri --use-system-libraries
bundle install --path vendor/bundle
echo "Done."
