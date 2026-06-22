#!/bin/bash

echo
echo "Installing OpenJDK 21 and 25..."
sudo apt-get update && sudo apt-get install -y openjdk-21-jdk openjdk-21-source openjdk-25-jdk openjdk-25-source

echo
echo "Installing jenv..."
git clone https://github.com/jenv/jenv.git ~/.jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.jenv/bin:$PATH"

echo
echo "Add Java versions to jenv..."
jenv add /usr/lib/jvm/java-21-openjdk-amd64/
jenv add /usr/lib/jvm/java-25-openjdk-amd64/
jenv global 25

echo
echo "Setting JAVA_HOME for Java 25..."
echo "export JAVA_HOME=/usr/lib/jvm/java-25-openjdk-amd64" >> ~/.bashrc
export JAVA_HOME=/usr/lib/jvm/java-25-openjdk-amd64
