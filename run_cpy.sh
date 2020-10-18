#! /bin/sh

[ ! -d "$ORIGIN" ] && echo "ERROR please mount the folder in $ORIGIN" &&
 exit 104

[ -d "$ORIGIN" ] && 
echo "Directory $ORIGIN exists." &&
cp -r $ORIGIN/* $MWORK

echo "alias ll='ls -lsha' " >> $HOME/.bashrc 
echo "alias merl='mvn  clean install -DskipTests' " >> $HOME/.bashrc
echo "alias merltest='mvn  clean install' " >> $HOME/.bashrc

bash