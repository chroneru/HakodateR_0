#!/bin/sh

if [ $# -eq 1 ] 

then

	echo "おうとうってなんだ？"
	R --vanilla --no-save --slave -f ./quiz_sh.R --args $1

else

	echo "引数の数が正しくありません。"

fi
