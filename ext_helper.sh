#!/bin/bash
FILES="./extensions/*"

function install_specific_ext {
	code --install-extension $1
}

function uninstall_ext {
	for f in $FILES
	do
		code --uninstall-extension $f
	done
}

function install_ext {
        for f in $FILES
        do
                code --install-extension $f
        done
}

function show_help {
	echo "-h : Shows help"
	echo "-i : Installs all extensions found in './extensions' folder"
	echo "-a : Installs a specific extension given bei path name"
	echo "-u : Uninstalls all extensions found in './extensions' folder"
}

if [ "$1" == "-i" ]; then
	install_ext
elif [ "$1" == "-u" ]; then
	uninstall_ext
elif [ "$1" == "-a" ]; then
    install_specific_ext "$2" 	
elif [ "$1" == "-h" ]; then
    show_help	
else 
	echo "add -h for help"		
fi
