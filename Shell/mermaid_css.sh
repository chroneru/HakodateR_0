#! /bin/sh

sed -f ./Sed/mermaid_css_scr $1 > /tmp/$1$$



cp /tmp/$1$$ ./$1$$

rm $1
mv $1$$ $1

rm -f /tmp/$1$$
