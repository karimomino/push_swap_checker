#  ██████╗ ██╗   ██╗███████╗██╗  ██╗        ███████╗██╗    ██╗ █████╗ ██████╗     ████████╗███████╗███████╗████████╗███████╗██████╗
#  ██╔══██╗██║   ██║██╔════╝██║  ██║        ██╔════╝██║    ██║██╔══██╗██╔══██╗    ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔══██╗
#  ██████╔╝██║   ██║███████╗███████║        ███████╗██║ █╗ ██║███████║██████╔╝       ██║   █████╗  ███████╗   ██║   █████╗  ██████╔╝
#  ██╔═══╝ ██║   ██║╚════██║██╔══██║        ╚════██║██║███╗██║██╔══██║██╔═══╝        ██║   ██╔══╝  ╚════██║   ██║   ██╔══╝  ██╔══██╗
#  ██║     ╚██████╔╝███████║██║  ██║███████╗███████║╚███╔███╔╝██║  ██║██║            ██║   ███████╗███████║   ██║   ███████╗██║  ██║
#  ╚═╝      ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝            ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
#
echo -e "\033[0;31m ██ ▄█▀▄▄▄       ███▄ ▄███▓ ██▓ ███▄    █    ▄▄▄█████▓▓█████   ██████ ▄▄▄█████▓▓█████  ██▀███
 ██▄█▒▒████▄    ▓██▒▀█▀ ██▒▓██▒ ██ ▀█   █    ▓  ██▒ ▓▒▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒
▓███▄░▒██  ▀█▄  ▓██    ▓██░▒██▒▓██  ▀█ ██▒   ▒ ▓██░ ▒░▒███   ░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒
▓██ █▄░██▄▄▄▄██ ▒██    ▒██ ░██░▓██▒  ▐▌██▒   ░ ▓██▓ ░ ▒▓█  ▄   ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄
▒██▒ █▄▓█   ▓██▒▒██▒   ░██▒░██░▒██░   ▓██░     ▒██▒ ░ ░▒████▒▒██████▒▒  ▒██▒ ░ ░▒████▒░██▓ ▒██▒
▒ ▒▒ ▓▒▒▒   ▓▒█░░ ▒░   ░  ░░▓  ░ ▒░   ▒ ▒      ▒ ░░   ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░
░ ░▒ ▒░ ▒   ▒▒ ░░  ░      ░ ▒ ░░ ░░   ░ ▒░       ░     ░ ░  ░░ ░▒  ░ ░    ░     ░ ░  ░  ░▒ ░ ▒░
░ ░░ ░  ░   ▒   ░      ░    ▒ ░   ░   ░ ░      ░         ░   ░  ░  ░    ░         ░     ░░   ░
░  ░        ░  ░       ░    ░           ░                ░  ░      ░              ░  ░   ░
                                                                                               \033[0m"

echo -e "\033[1;33m$(tput bold)Description:$(tput sgr0) This tester will utilize the checker provided by 42 with the push_swap project."
echo -e "\033[0;31m$(tput bold)NOTE:$(tput sgr0) THIS IS ONLY TESTED ON MAC, IF USING LINUX USE AT YOUR OWN RISK."
echo -e "\033[0;35m$(tput bold)Instructions:$(tput sgr0)
1.Download the linux/mac checker form the intra.
2.Copy/move the checker into the tester's directory.
3.Rename the checker to \"checker\".
4.run the following command \"bash tester.sh\".
5.Follow on-screen instructions.\n----------------------------------------------------------------------------------------------\n"
good="\033[0;32mYou PASSED THIS TEST 😀\033[0m"
echo -e "\033[0;33mTESTING SIZE 3 STACK\033[0m"


list="243 -111 3123"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 1\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo -e "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
list="3123 243 -111"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 2\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo -e "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
list="3123 -111 243"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 3\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo -e "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
list="-111 3123 243"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 4\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo -e "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
list="243 3123 -111"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 5\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo -e "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
list="-111 243 3123"
ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
echo -e -n "TEST 6\t\tStack Size: 3\t\tOperations: ${ops}\t\t"
if [ "$pass" = "OK" ]; then
    echo -e "\033[0;32mOK\033[0m"
else
    echo "\033[0;31mKO\033[0m"
	good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
fi
echo -e "${good}\n\n"
echo -e "\033[0;33mTESTING SIZE 5 STACK\033[0m"
echo "How many tests do you want to run?"
read count
good="\033[0;32mYou PASSED THIS TEST 😀\033[0m"
for (( i=1; i<=$count; i++ ))
  do
	list=$(perl number_gen.pl 5)
	ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
	pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
	echo -e -n "TEST ${i}\t\tStack Size: 5\t\tOperations: ${ops}\t\t"
	if [ "$pass" = "OK" ]; then
		echo -e "\033[0;32mOK\033[0m"
	else
		echo "\033[0;31mKO\033[0m"
		good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
	fi
 done
echo -e "${good}\n\n"

#TESTING STACK SIZE 10
echo -e "\033[0;33mTESTING SIZE 10 STACK\033[0m"
echo "How many tests do you want to run?"
read count
good="\033[0;32mYou PASSED THIS TEST 😀\033[0m"
for (( i=1; i<=$count; i++ ))
  do
	list=$(perl number_gen.pl 10)
	ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
	pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
	echo -e -n "TEST ${i}\t\tStack Size: 10\t\tOperations: ${ops}\t\t"
	if [ "$pass" = "OK" ]; then
		echo -e "\033[0;32mOK\033[0m"
	else
		echo "\033[0;31mKO\033[0m"
		good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
	fi
 done
echo -e "${good}\n\n"

#TESTING STACK SIZE 100
echo -e "\033[0;33mTESTING SIZE 100 STACK\033[0m"
echo "How many tests do you want to run?"
read count
good="\033[0;32mYou PASSED THIS TEST 😀\033[0m"
for (( i=1; i<=$count; i++ ))
  do
	list=$(perl number_gen.pl 100)
	ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
	pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
	echo -e -n "TEST ${i}\t\tStack Size: 100\t\tOperations: ${ops}\t\t"
	if [ "$pass" = "OK" ]; then
		echo -e "\033[0;32mOK\033[0m"
	else
		echo "\033[0;31mKO\033[0m"
		good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
	fi
 done
echo -e "${good}\n\n"

#TESTING STACK SIZE 500
echo -e "\033[0;33mTESTING SIZE 500 STACK\033[0m"
echo "How many tests do you want to run?"
read count
good="\033[0;32mYou PASSED THIS TEST 😀\033[0m"
for (( i=1; i<=$count; i++ ))
  do
	list=$(perl number_gen.pl 500)
	ops=$(../push_swap "${list}" | wc -l | sed 's/^ *//g')
	pass=$(../push_swap "${list}" | ./checker "${list}" | sed 's/^ *//g')
	echo -e -n "TEST ${i}\t\tStack Size: 500\t\tOperations: ${ops}\t\t"
	if [ "$pass" = "OK" ]; then
		echo -e "\033[0;32mOK\033[0m"
	else
		echo "\033[0;31mKO\033[0m"
		good="\033[0;31mYOU FAILED THIS TEST 😞\033[0m"
	fi
 done
echo -e "${good}\n\n"
