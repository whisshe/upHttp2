#!/bin/bash
pwd=`pwd`
source $pwd/functions
color 6 "which soft you want to upgrade"
color 6 "1.nginx\n 2.openssl\n 3.all "
read -p "input a number: " num
case $num in
    1)
	    nginxCodeUp 
		;;
	2)
	    opensslUp
		;;
	3)
	    allVerify
	    opensslUp
	    nginxCodeUp
		;;
	q)
	    exit 0
		;;
	*)
	    color 1 "please input the number in the list or enter q to quit"
		;;
esac
