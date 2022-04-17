function clone_all
	set org $argv[1]
set prefix $argv[2]
set interns $argv[3..-1]
for intern in $interns
git clone "https://github.com/$org/$prefix-$intern"
end
end
