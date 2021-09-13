#! /usr/bin/perl -w

# 1)
$file = "1.txt";
system("ls -l 1.txt");
$result = system "ls -l $file";
print "$result \n";  #输出命令的退出状态
system "date";

# 2)
print `date`;
print "this is test \n";

# 3)
exec ("echo this is test");  #调用exec之后,perl马上就退出
print "good bye !\n";  #这句话不会被输出
