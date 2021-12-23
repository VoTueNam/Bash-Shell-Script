#! /bin/bash

# echo "Enter name: "
# read -a names
# echo "Names : ${names[0]}, ${names[1]}"

# read
# echo "Name: "$REPLY

# echo $0 $1 $2 $3

#args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]} ${args[3]} 

#echo $@
#echo $#

# count=9
# if [ $count == "9" ]
# then
# 	echo "True"
# fi

echo -e "Enter the name file: \c"
read filename

# if [ -e $filename ] # một vài flag khác như -f, -d, -c, -s
# then
# 	echo "$filename found"
# else
# 	echo "$filename not found"
# fi


if [ -f $filename ]
then
	if [ -w $filename ]
	then
		echo "Type some text data. To quit press Ctrl D"
		cat >> $filename
	else
		echo "The file do not have permission to write"
	fi
else
	echo "$filename not exists"
fi