#!/usr/bin/perl
#basic example

#perl will automatically convert a numeric value to string, 
#when trying to print
#Variables are most often prepended with $
$number = 1;

#printing number without \n
print "$number";
#print number with a \n
print "$number\n";
#add 1 to a number?  Not quite
print "$number + 1\n";
#add one to a number for real
print $number+1 ."\n";

#Arrays are prepended with a @
@array= (1,2);

print "array value stored in 0:@array[0]\n";
print "array value stored in 0:@array[1]\n";

foreach (@array)  {
  print "looping through values: current value is $_\n"
}

#array of strings, using double quotes
@array_of_strings = ("timothy.nordloh\@ngc.com", "randall.ellefsen\@ngc.com");

foreach (@array_of_strings)  {
  print "looping through addresses: current value is $_\n"
}

#array of strings using single quote
@array_of_strings = ('timothy.nordloh\@ngc.com', 'randall.ellefsen@ngc.com');

foreach (@array_of_strings)  {
  print "single_quote example: current value is $_\n"
}

#array of strings using qw
@array_of_strings = qw(timothy.nordloh@ngc.com randall.ellefsen@ngc.com);

foreach (@array_of_strings)  {
  print "qw example: current value is $_\n"
}


