#!/bin/bash

# sudo apt-get install -y build-essential autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev rustc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
exec $SHELL

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install jekyll bundler

