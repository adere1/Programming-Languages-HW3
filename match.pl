
open(input, "<input.txt") or die "File input.txt is not present,$!";
my @single_word;
$count = 0;
while (<input>){
  chomp;
  @single_word = split("\n");
  @arr = split(//,@single_word[0]);
  
    	if(@single_word[0] =~ /(or)+/) {
	 	print "\n@single_word[0] contains or ";	 
    	}
	
	for($i=0;$i<length(@single_word[0]);$i++){	
	 if (@arr[$i] =~ /[aeiou]/i){		   
	       $count++;
	  }
	}
	if($count>=2){
	
		print "\n@single_word[0] contains at least two vowel letters ";
	}#print "$num";
    	$count = 0;
    
	if(!(@single_word[0] =~ /^h|^H/)) {
	 print "\n@single_word[0] does not start with h ";
	 
	}
	
	if(@single_word[0] =~ /.(e|E).*(y|Y)/) {
	 print "\n@single_word[0] has e as the second symbol and ends with y  ";
	 
	}
	
	if(@single_word[0] =~ /[a-z][0-9]|[0-9][a-z]/) {
	 print "\n@single_word[0] contains both letters and digits   ";
	 
	}	
}
close (input);