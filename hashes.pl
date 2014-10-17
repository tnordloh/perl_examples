use feature say;
sub hash_1 {
  print "hash built one by one\n";
  my %list;
  $list{'randy'} = 'randall.ellefsen@ngc.com';
  $list{'tim'} = 'timothy.nordloh@ngc.com';
  $list{'dan'} = 'dan.fenzl@ngc.com';

  foreach (keys %list) {
    say "key is $_";
    say "value is $list{$_}";
  }
}

sub hash_2 {
  print "hash build using => notation\n";
  %list = (
    'randy' => 'randall.ellefsen@ngc.com',
    'tim'   => 'timothy.nordloh@ngc.com',
    'dan'   => 'timothy.nordloh@ngc.com');

  foreach (keys %list) {
    say "key is $_";
    say "value is $list{$_}";
  }
}

sub hash_3 {
  print "hash build using simple list\n";
  %list = ('randy','randall.ellefsen@ngc.com','tim','timothy.nordloh@ngc.com');

  foreach (keys %list) {
    print "key is $_\n";
    print "value is $list{$_}\n";
  }
}

sub hash_4 {
  print "hash build using qw\n";
  %list = qw(randy randall.ellefsen@ngc.com 
             tim   timothy.nordloh@ngc.com);

  foreach (keys %list) {
    print "key is $_\n";
    print "value is $list{$_}\n";
  }
}

sub hash_5 {
  print "print hash sorted by key \n";
  %list = (
    'randy' => 'randall.ellefsen@ngc.com',
    'tim'   => 'timothy.nordloh@ngc.com',
    'dan'   => 'timothy.nordloh@ngc.com');

  foreach (sort keys %list) {
    say "key is $_";
    say "value is $list{$_}";
  }
}
1;
