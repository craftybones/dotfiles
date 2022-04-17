function commitcnt
	for i in */
set x (string replace -r '\/$' '' $i)
cd $i
set y (git rev-list --count HEAD)
cd ..
echo "$x : $y"
end
end
