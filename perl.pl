# -----------Input into an Array----------

open(my $file1, "<", "input.txt")
 or die "Could not open file $!";
$line_no=0;
while (<$file1>) 
{
	push (@lines, $_);
	$line_no++;
}
print "Input is as follows: \n";
print @lines;
print "\n--------------------------------------------\n";
#----------- Number of 'L' on each line---------


#print "\nNo of 'L' in each line -- Line gets printed if count is > 2\n\n";
foreach(@lines)
{
	$char = "l";my $count=0;$offset=0;
	my $result = index($_, $char, $offset);
 	while ($result != -1) 
 	{
	    $count = $count + 1;
	    $offset = $result + 1;
	    $result = index($_, $char, $offset);
  	}
  	if ($count >=	2)
  	{
  		print "$_ contains two or more $char\n";
  	}	

}
#print "\n--------------------------------------------\n";

#-------- 'hi' as a substring--------
#print "\nIf line contains substring 'hi' then line gets printed\n\n";
foreach(@lines)
{
	if (index($_, 'hi') != -1) 
	{
    	print "$_ contains 'hi'\n";
	}
}
#print "\n--------------------------------------------\n";

#-------- Starts with 'h' and ends with 't'---------
#print "\nIf line Starts with 'h' and ends with 't' line gets printed\n\n";
foreach(@lines)
{	
	if ($_ =~ /^\bh.+t\b/)
	{
		print "$_ starts with 'h' and ends with 't' \n";
	}
}
#print "\n--------------------------------------------\n";

#---------- one vowel case ------------------
#print "\nIf line contains only one vowel it gets printed \n";
@vowel=("a","e","i","o","u");
foreach my $Li (@lines)
{
	my $count=0;
	foreach my $vo (@vowel)
	{	$offset=0;
		my $result = index($Li, $vo, $offset);
	 	while ($result != -1) 
	 	{
		    $count = $count + 1;
		    $offset = $result + 1;
		    $result = index($Li, $vo, $offset);
	  	}
	  	
	}
	if ($count<2)
	  	{
	  		print "$Li contains one vowel charachter\n";
	  	}	
}