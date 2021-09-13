#!/usr/bin/perl  

use Getopt::Std;
use vars qw($opt_n);
getopts('n:');
print "\$opt_n =>; $opt_n\n" if $opt_n;
system("docker exec -it " . $opt_n ." sh");
