#!/bin/bash

# sudo apt-get install -y build-essential autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev rustc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"

git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

rbenv install 4.0.5
rbenv global 4.0.5

# Set up certs for Ruby. Enable if your environment requires custom certs.
# sudo cp /opt/certs/nscacert.pem /usr/local/share/ca-certificates/netskope.crt
# sudo update-ca-certificates
# ruby -ropenssl -e 'puts OpenSSL::X509::DEFAULT_CERT_FILE'
# ruby -ropenssl -e 'puts OpenSSL::X509::DEFAULT_CERT_DIR'

gem install jekyll bundler
