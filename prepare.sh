#!/bin/bash

function main()
{
    echo ""
    echo "Configuring local environment with dotfiles directory!"
    echo ""

    dotfile_root=$(current-script-directory)
    dotfile_path=$dotfile_root/70-synaptics.conf
    config_origin=/etc/X11/xorg.conf.d/70-synaptics.conf

    # first check to see if the config still exists
    if [ -e $config_origin ] || [ -L $config_origin ]; then
        
        echo "Previous config already exists, deleting..."
        echo ""
        rm -rf $config_origin
    fi

    echo "Performing link as below:"
    echo "$config_origin -> $dotfile_path"
    echo ""
    ln -s $dotfile_path $config_origin

    echo "Done preparing dotfile with local environment, exiting..."
    echo ""
}

function current-script-directory()
{
	# foolproof way to figure out where this script is placed
	source="${BASH_SOURCE[0]}"
	while [ -h "$source" ]; do # resolve $source until the file is no longer a symlink
	  dir="$( cd -P "$( dirname "$source" )" && pwd )"
	  source="$(readlink "$source")"
	  # if $source was a relative symlink, we need to resolve it relative
	  # to the path where the symlink file was located
	  [[ $source != /* ]] && source="$dir/$source"
	done
	dir="$( cd -P "$( dirname "$source" )" && pwd )" #dir now has the script locat'n
	echo $dir
}

# after reading in all functions, enter the main execution order
main
