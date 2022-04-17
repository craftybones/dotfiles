function git_log_history
echo "["
for i in */
if test -d $i.git
cd $i
git log --format={:sha \"%h\" :author \"%an\" :date \"%ci\"}
cd ..
end
end
echo "]"
end
