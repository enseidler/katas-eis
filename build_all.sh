#!/usr/bin/env sh
set -e
bundle install
cd ejemplo_banco
bundle exec rake
cd ..
cd char_counter
bundle exec rake
cd .. 
cd tenis
bundle exec rake
cd ..
cd battleship
bundle exec rake
