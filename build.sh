#!/bin/sh

CMD=$0
PLATFORM=$1
DIR=${PWD}

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

do_package()
{
	make distclean
	rm .libs/ -fr
	cd ../
	if [ -f liblog_1.0.0.orig.tar.xz ]; then
		rm liblog_1.0.0.orig.tar.xz
	fi
	tar -cvf liblog_1.0.1.orig.tar liblog \
	--exclude liblog/.git \
	--exclude liblog/.libs \
	--exclude liblog/.deps
	xz -z liblog_1.0.1.orig.tar
	cd ${DIR}
	#dpkg-buildpackage
}

do_ppa()
{
	rm .libs/ -fr
	dpkg-buildpackage -S
	debuild -S -k6A210E88
}

do_build()
{
	case $PLATFORM in
	"arm")
		HOST="--host=arm-linux-gnueabihf";;
	"deb")
		do_package;
		exit;;
	"ppa")
		do_ppa;
		exit;;
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
