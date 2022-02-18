awk 'BEGIN {FS=" ";prec=0;k=0;l=0;res=200;tab[res-1]="{\n\t\"version\": 1, \n\t\"namespace\": \"death-possibilities\", \n\t\"description\": \"Taxonomy of Death Possibilities\", \n\t\"predicates\": \n\t["}
{
	if($2 ~ /\$/){ 
		$1 = ""
		$2 = ""
		$3 = ""
		$0 = substr($0,4,length($0))
		if(l == 0){
			l+=1
		}else{
			tab[res+1] = "" tab[res+1] ","
		}
		tab[res+1] = "" tab[res+1] "\n\t\t{\n\t\t\t\"value\": \"" $0 "\"\n\t\t}"
		prec=0

		if(k == 0){
			k+=1
		}else{
			tab[res] = "" tab[res] "\n\t\t\t]\n\t\t},"
		}
		
		tab[res] = "" tab[res] "\n\t\t{\n\t\t\t\"predicate\": \"" $0 "\", \n\t\t\t\"entry\": \n\t\t\t["
	}else{
		if($0 !~ /^$/){
			if(prec == 1){
				tab[res] = "" tab[res] ","
			}
			prec=1
			tab[res] = "" tab[res] "\n\t\t\t\t{\n\t\t\t\t\t\"value\": \"" $0 "\"\n\t\t\t\t}"
		}
	}
	
      
}
END{
	tab[res+1] = "" tab[res+1] "\n\t],\n\t\"values\":\n\t["
	tab[res] = "" tab[res] "\n\t\t\t]\n\t\t}\n\t]\n}\n"
	print(tab[res-1]tab[res+1]tab[res])
}
' CauseOfDeathTrier.txt
