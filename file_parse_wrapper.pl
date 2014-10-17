#!/usr/bin/perl

require 'file_parse.pl';
use feature say;

say "file parse wrapper";
#parse_1();
%mylist = parse_4();
print_emails(%mylist);
