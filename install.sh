#!/bin/bash
# Copy the code style to the IDE configuration.
# Tested on Android Studio 4.0.1

echo "Installing code style configs..."

for i in $HOME/Library/Preferences/IntelliJIdea* \
$HOME/Library/Preferences/IdeaIC* \
$HOME/Library/Preferences/AndroidStudio* \
$HOME/.IntelliJIdea*/config \
$HOME/.IdeaIC*/config \
$HOME/.AndroidStudio*/config
do
  if [ -d $i ]; then
    mkdir -p $i/codestyles
    cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/config/* $i/codestyles 2> /dev/null
  fi
done

echo "Done"
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'SensorbergCodeStyle'."
