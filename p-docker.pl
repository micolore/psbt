#!/usr/bin/perl  

use Getopt::Std;
use vars qw($opt_n);
getopts('n:');
print "\$opt_n =>; $opt_n\n" if $opt_n;

%data = ('1','mysql');

@keys = keys %data;

foreach $k(@keys){
    if($k == $opt_n){
      $docker_name = %data{$k};	
	  print "docker_name: $docker_name \n"; 
    } 
}
system("docker exec -it " . $docker_name ." sh");
