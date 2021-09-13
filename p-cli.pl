#!/usr/bin/perl  

use feature qw(say);

system "date";

#$result = system "docker ps -a";
$result = readpipe("docker ps -a");
#print "@result \n";  #输出命令的退出状态

$result =~ s/ {3,}/   /g;

# 逐行读取
my @result_line = split("\n",$result);

#print join ("\n", @result_line); 

foreach $eachline(@result_line){

       @first_line_array = split("   ",$eachline);  

	   if (@first_line_array[6] == "myredis"){
	       say(@first_line_array[6]);	
		   system("docker exec -it myredis sh");
	   }  
}
