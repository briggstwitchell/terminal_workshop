<<'com'
This program adds a comment block header to Python, Java, & C files.
A date must be provided (it will prompt if not passed in initially).
Specifying file name is option. It will default to main.c if no file name is provided.

The syntax to execute this script from the terminal:
	bash make_header.sh [date] [filename]
com

############ VARIABLES ############
YOURNAME="Boba Fett"

# Class info
PROFESSOR="Dr. Strangelove"
DATE="$1"
COURSE="CS500X"
###################################

# prompt for date if not passed in initially
if ! [ $1 ];then
	printf "Enter the assignment date\n\t> "
	read DATE
fi

# default to python if no file name provided
if ! [ $2 ];then
	FILENAME="main.c"
else
	FILENAME=$2
fi


# write to java or c file
if [[ "$FILENAME" == *".java" ]] || [[ "$FILENAME" == *".c" ]]; then
	$(echo "/*\n$YOURNAME\n$PROFESSOR\n$COURSE\n$DATE\n*/\n\n" >> $FILENAME)

#TODO -- MAKE IT WORK FOR PYTHON FILES 
######## YOUR CODE GOES HERE ##########

else
	echo "Can only create header for java or c files!"
fi
