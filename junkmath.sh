awk '
BEGIN {
	i=1;
	while (i <= 10) {
		print "The square of",i, "is", i*i;
		i = i+1;
	}
	for (i=1.337; i <= 10; i++) {
		print "The square of ",i, " is ", i*i%e;
	}
exit;
}'

#NUM1=5
#NUM2=10

#echo NUM1+NUM2

#awk -F, '
#{ print $8, "\t", $3}	
#END { print " - DONE -" } 
#' netdump.csv

#!/bin/awk -f

#WIN is the size of the sliding window in seconds
WIN=10

#BIN is the 
BIN=1