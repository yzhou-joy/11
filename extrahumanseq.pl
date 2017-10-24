#!/usr/bin/perl 
open FILE2, "<E:\\毕设\\data\\hg19.txt"or die "cannot open human file";
$n=0;
my %hash_data;       # 定义哈希
while(<FILE2>)
{
    chomp();         # 空格拆分数据为两列
    my ($dkey,$dval) = split(/\s+/,$_);
    # 存入哈希(相当于为键$dkey赋值$dval)
    $hash_data{$dkey}=$dval;
}
print "hash is okay! please print your data :\n";
print "chr is :";
$chrid = <STDIN>;
chomp($chrid);
print "\n startpos is :";
$loc1=<STDIN>;
chomp($loc1);
print "\n length is :";
$len=<STDIN>;
chomp($len);
for $k (keys(%hash_data)) 
 	     { 
 	     	if($k eq $chrid) 
 	     	{ 
 	     	  $v = $hash_data{$k};
 	     	  $humanseq=substr($v,$loc1,$len); 
        }
       
      }
       print "\n your wanna seq is $humanseq\n";