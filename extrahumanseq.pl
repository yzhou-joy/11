#!/usr/bin/perl 
open FILE2, "<E:\\����\\data\\hg19.txt"or die "cannot open human file";
$n=0;
my %hash_data;       # �����ϣ
while(<FILE2>)
{
    chomp();         # �ո�������Ϊ����
    my ($dkey,$dval) = split(/\s+/,$_);
    # �����ϣ(�൱��Ϊ��$dkey��ֵ$dval)
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