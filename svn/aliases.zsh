alias svnu='svn up'
alias sst='svn stat'
alias sstt='svn stat |  grep "^\w "'
alias svnl='svn log -l 10'
alias svnc='svn commit'
alias svnr='svn revert'

# shows only relevant changed files (for a java project)
svs() {
	svn stat | grep -v "classpath" | grep -v "/bin" | grep -v ".settings" | grep -v ".project" | grep -v "target"
}

function sdf {
	svn diff $@ | vim -
}

function svnls {
	if [ -z "$1" ]; then
		svs
	else
		svn log -v -r $1
	fi
}

function svnp {
	CUSTOM_SVN=".svn/custom"
	# create custom folder if it doesn't exist
	if [ ! -d "$CUSTOM_SVN" ]; then
		mkdir $CUSTOM_SVN
	fi

	svs > $CUSTOM_SVN/svs

	cat $CUSTOM_SVN/svs | grep "^M" > $CUSTOM_SVN/updated
	cat $CUSTOM_SVN/svs | grep "^?" > $CUSTOM_SVN/unversioned
	cat $CUSTOM_SVN/svs | grep "^A" > $CUSTOM_SVN/added
	cat $CUSTOM_SVN/svs | grep "^D" > $CUSTOM_SVN/removed

	sed -i s/"^."/""/g $CUSTOM_SVN/{updated,unversioned,added,removed}
	sed -i s/"^       "/""/g $CUSTOM_SVN/{updated,unversioned,added,removed}
	sed -i s/" "/"\\\ "/g $CUSTOM_SVN/{updated,unversioned,added,removed}

}

function svncm {
	svnp
	message="$1"
	if [ -n "$message" ]; then

		cat $CUSTOM_SVN/{updated,added} > $CUSTOM_SVN/commit
		paths=`sed ':init ; $ b end ; N ; s/\n/ / ; b init ; :end' $CUSTOM_SVN/commit`

		svn commit -m \"$message\" $paths
	else
		echo "Missing message\n    run: svncm \"Commit Message\""
	fi
}

function ss {
	svnp
	updated=`cat $CUSTOM_SVN/updated`
	if [ -n "$updated" ]; then
		echo -e "\033[33mModified:\033[39m"
		echo $updated
		echo "\n"
	fi

	added=`cat $CUSTOM_SVN/added`
	if [ -n "$added" ]; then
		echo -e "\033[34mAdded:\033[39m"
		echo $added
		echo "\n"
	fi

	removed=`cat $CUSTOM_SVN/removed`
	if [ -n "$removed" ]; then
		echo -e "\033[31mRemoved:\033[39m"
		echo $removed
		echo "\n"
	fi

	unversioned=`cat $CUSTOM_SVN/unversioned`
	if [ -n "$unversioned" ]; then
		echo -e "\033[35mUnversioned:\033[39m"
		echo $unversioned
	fi

}
