#!/bin/bash
# This is a basic bash script

#--Displaying Text with ECHO

#greeting="hello"

#echo $greeting, world \(planet\)!

#echo 'greeting world (planet)!'

#echo "greeting world (planet)!"

#--Working with variables

#a=Hello
#b="Good Morning"
#c=16

#echo $a
#echo $b
#echo $c

#--Command Substitution

#echo "$b! I have $c apples."

#a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
#echo "The ping was $a"


#--Working with numbers

#d=2
#e=$((d+2))
#echo $e

#((e++))
#echo $e

#((e--))
#echo $e

#((e+=5))
#echo $e

#((e*=3))
#echo $e

#((e/=3))
#echo $e

#((e-=5))
#echo $e

#f=$((1/3))
#echo $f

#g=$(echo 1/3 | bc -l)
#echo $g

#--Comparing values

#a=""
#b="cat"

#[[ -z $a && -n $b ]]
#echo $?

#--Coloring and styling text

#flashred="\033[5;31;40m"
#red="\033[31;40m"
#none="\033[0m"

#echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

#flashred=$(tput setab 0; tput setaf 1; tput blink)
#red=$(tput setab 0; tput setaf 1)
#none=$(tput sgr0)

#echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

#--Exploring some handy helpers: date and print

#today=$(date +"%d-%m-%y")
#time=$(date +"%H:%M:%S")
#printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time

#echo "$d"

#--Working with arrays

#a=()
#b=("apple" "bannana" "cherry")

#echo ${b[2]}

#b[5]="kiwi"
#b+=("mango")
#echo ${b[@]}

#declare -A myarray
#myarray[color]=blue
#myarray[office buidling]="HQ West"
 
#echo ${myarray["office building"]} is ${myarray[color]}

#--Make a script that generates a system report

#freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
#greentext="\033[32m"
#bold="\033[1m"
#normal="\033[0m"
#logdate=$(date +"%Y%m%d")
#logfile="$logdate"_report.log

#echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$normal
#printf "\tSystem type:\t%s\n" $MACHTYPE
#printf "\tBash Version:\t%s\n" $BASH_VERSION
#printf "\tFree Space:\t%s\n" $freespace
#printf "\tFiles in dir:\t%s\n" $(ls | wc -l)
#printf "\tGenerated on:\t%s\n" $(date +"%m/%d/%y") # US date format
#echo -e $greentext"A summary of this info has been saved to $logfile"$normal

#cat <<- EOF > $logfile
#	This report was automatically generated by my Bash script.
#	It contains a brief summary of some system information.
#EOF

#printf "SYS:\t%s\n" $MACHTYPE >> $logfile
#printf "BASH:\t%s\n" $BASH_VERSION >> $logfile

#--While and until loops

#i=0
#while [ $i -le 10 ]; do
#	echo i:$i
#	((i+=1))
#done

#j=0
#until [$j -ge 10 ]; do
#	echo j:$j
#	((j+=1))
#done

#for i in {1..100}
#do
#	echo $i
#done

#--Behavior using case

#a="dog"
#case $a in
#	cat) echo "Feline";;
#	dog|puppy) echo "Canine";;
#	*) echo "No Match!";;
#esac

#--Using functions

#function greet {
#	echo "Hi, $1! What a nice $2!"
#}

#echo "And now, a greeting!"
#greet Scott Morning
#greet Everybody Evening

#function numberthings {
#	i=1
#	for f in $@; do
#		echo $i: $f
#		((i+=1))
#	done
#}

#numberthings $(ls)

#--Working with arguements

#for i in $@
#do
#	echo $i
#done

#*echo "There were $# arguments."

#--Working with flags

#while getopts :u:p:ab option; do
#	case $option in
#		u) user=$OPTARG;;
#		p) pass=$OPTARG;;
#		a) echo "Got the A flag";;
#		b) echo "Got the B flag";;
#		?) echo "I don't know what $OPTARG is!";;
#	esac
#done

#echo "User: $user / Pass: $pass"

#--Getting input during execution

#select option in "cat" "dog" "quit"
#do
#	case $option in
#		cat) echo "Cats like to sleep.";;
#		dog) echo "Dogs like to play catch.";;
#		quit) break;;
#		*) echo "I'm not sure waht that is.";;
#	esac
#done

#--Ensuring a response

#read -p "What year? [nnnn] " a
#while [[ ! $a =~ [0-9]{4} ]]; do
#	read -p "A year, PLEASE! [nnnn] " a
#done

#echo "Selected year: $a"

#--Making a script that uses input

#rand=$RANDOM
#secret=${rand:0:1}

#function game {
#	read -p "Guess a random one-digit number! " guess
#        while [[ $guess != $secret ]]; do
#                read -p "Nope, try again! " guess
#        done
#	echo "Good job, $secret is it! You're great at guessing!"
#}

#function generate {
#       echo "A random number is: $rand"
#	echo -e "Hint: type \033[1m$0 game\033[0m for a fun diversion!"
#}

#if [[ $1 =~ game|Game|GAME ]]; then
#	game
#else
#	generate
#fi

