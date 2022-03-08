BEGIN { FS=",";
	OFS=",";
	sum = 0; }
{ for(i = 10; i <= NF; i++) { sum = sum + $i };
  print $7, $4, $5, $6, sum;
  sum = 0; 
} 
END {
}

