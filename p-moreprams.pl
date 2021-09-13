#!/usr/bin/perl

#!/usr/bin/perl -w
use strict;
use Getopt::Std;
use vars qw($opt_a $opt_b $opt_c);
getopts('a:b:c:');
print "\$opt_a =>; $opt_a\n" if $opt_a;
print "\$opt_b =>; $opt_b\n" if $opt_b;
print "\$opt_c =>; $opt_c\n" if $opt_c;
