use feature say;
sub print_emails;

sub parse_1 {
  open (MYFILE, 'parse_single_lines.txt');
  %list;
  while(<MYFILE>) {
    @my_array = split(/ /,$_);
    $list{@my_array[0]}= chomp(@my_array[1]);
  }
  close MYFILE;
  print_emails(%list);
}

sub parse_2 {
  open (MYFILE, 'parse_single_lines.txt');
  %list;
  while(<MYFILE>) {
    ($name,$email) = split(/ /,$_);
    $list{$name}= chomp($email);
  }
  close MYFILE;
  print_emails(%list);
}

sub parse_3 {
  open (MYFILE, 'parse_single_lines.txt');
  %list;
  while(<MYFILE>) {
    ($name,$email) = split(/ /,$_);
    $list{$name}= chomp($email);
  }
  close MYFILE;
  return %list;
}

sub parse_4 {
  say "demo parsing multi-line file";
  local $/ = "person\n"; 
  open (MYFILE, 'parse_multi_lines.txt');
  %list;
  while(<MYFILE>) {
    ($name,$email) = split(/\n/s,$_);
    $list{$name}= $email;
  }
  close MYFILE;
  return %list;
}

sub parse_5 {
  say "demo parsing from command line input";
  local $/ = "person\n"; 
  %list;
  while(<>) {
    ($name,$email) = split(/\n/s,$_);
    $list{$name}= $email;
  }
  return %list;
}

sub print_emails {
  my (%mylist) = @_;
  foreach (keys %mylist) {
    print "key $_:";
    say "value $mylist{$_}";
  }
}
1;

