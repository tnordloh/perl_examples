#basic example

#perl will automatically convert a numeric value to string, 
#when trying to print
#Variables are most often prepended with $

#printing number without \n
$number = 1; #this is a global variable

sub number_1 {
  print "$number";
}
#print number with a \n

sub number_2 {
  print "${number}\n";
}
##add 1 to a number?  Not quite

sub number_3 {
  print "$number + 1\n";
}
##add one to a number for real

sub number_4 {
  print $number+1 ."\n";
}
#
##array variables are prepended with a @


sub array_1 {
  @array= (1,2);
  print "array value stored in 0:@array[0]\n";
  print "array value stored in 0:@array[1]\n";
}

#looping through an array
sub array_2 {
  @array= (1,2);
  foreach (@array)  {
    print "looping through values: current value is $_\n"
  }
}

##array of strings, using double quotes
sub array_4 {
  @array_of_strings = ("timothy.nord\@whatever.com", 
                      "randall.elle\@whatever.com",
                      "dan.fen\@whatever.com");
  foreach (@array_of_strings)  {
    print "looping through addresses: current value is $_\n"
  }
}
#
#array of strings using single quote
sub array_5 {
  @array_of_strings = ('timothy.nord\@whatever.com',
                       'randall.elle@whatever.com');
  foreach (@array_of_strings)  {
    print "single_quote example: current value is $_\n"
  }
}
#
#array of strings using qw
sub array_6 {
  @array_of_strings = qw(timothy.nord@whatever.com randall.elle@whatever.com);

  foreach (@array_of_strings)  {
    print "qw example: current value is $_\n"
  }
}
