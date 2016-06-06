#!/bin/sh

CMD=$0
PLATFORM=$1

usage()
{
	echo "==== usage ===="
	echo "$CMD [platform]"
	echo "<platform>: arm, x86(default)"
}

do_make()
{
	./configure ${HOST}
	make
}

do_build()
{
	case $PLATFORM in
	"arm")
		HOST="--host=arm-linux-gnueabihf";;
	"help")
		usage;
		exit;;
	"clean")
		make clean;
		exit;;
	*)
		HOST="";;
	esac
}

do_build
do_make
