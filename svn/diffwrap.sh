#!/bin/sh
#
# configure it in ~/.subversion/config as:
#
# [helpers]
# diff-cmd = ~/.dotfiles/svn/diffwrap.sh
#

vimdiff ${6} ${7}
