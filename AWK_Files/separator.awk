awk 'BEGIN {FS=" ";k=0}
{
	$1 = substr($1, 0, length($1)-1)
	if($1 !~ /\(/){
		tab[k] = "" tab[k] $0 "\n"
	}
	else{
		k+=1
		tab[k] = "" tab[k] $0 "\n"
	}
      
}
END{
	for(i = 1;i <= k;i++){
		print(i,"$ : " ,tab[i])
	}
}
' CauseOfDeath.txt
