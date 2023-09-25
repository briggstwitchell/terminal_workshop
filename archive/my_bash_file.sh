# STRING="Null byte"
# echo "Hackers love to learn on $STRING"

# echo "First: $1, second:$2, third:$3"

echo "What's your name?"
read NAME
echo "Wow, the name $NAME is really cool!"


echo $(ls)


if [ $NAME ];then
	echo "A name exists!"
else
	echo "no name provided"
fi
