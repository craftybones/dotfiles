# Defined in - @ line 1
function pull_all
	for dir in */
        cd $dir
        git pull
        cd ..
    end
end
