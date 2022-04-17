# Defined in - @ line 2
function jarify
	javac -d java/out java/**/*.java
    cd java/out
    jar cf ../../person.jar *
    cd ../../
end
