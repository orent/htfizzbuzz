fizzbuzz: fizzbuzz.S
	gcc -mavx2 -c fizzbuzz.S
	ld -o fizzbuzz fizzbuzz.o

test: fizzbuzz
	timeout 5 ./fizzbuzz | pv > /dev/null	
