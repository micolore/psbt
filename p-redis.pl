#!/usr/bin/perl

use Redis;

my $redis = Redis->new;
 
my $redis = Redis->new(server => '127.0.0.1:6379');
 
$redis->get('key');
$redis->set('key' => 'wow i\'am value!');

$value = $redis->get('key');
print "value: $value\n";

$redis->sort('list', 'DESC');
$redis->sort(qw{list LIMIT 0 5 ALPHA DESC});
 
