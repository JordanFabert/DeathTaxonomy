awk 'BEGIN {FS=" ";prec=0;k=0;res=200;tab[res]="{\n\t\"version\": 1, \n\t\"namespace\": \"JODA\", \n\t\"description\": \"Taxonomy of Death Possibilities\", \n\t\"values\": \n\t[\n"}
{
	if($2 ~ /\$/){ 
		prec=0
		$1 = ""
		$2 = ""
		$3 = ""
		$0 = substr($0,4,length($0))
		if(k == 0){
			k+=1
		}else{
			tab[res] = "" tab[res] "\n\t\t\t]\n\t\t}"
		}
		tab[res] = "" tab[res] ",\n\t\t{\n\t\t\t\"predicate\": \"" $0 "\", \n\t\t\t\"entry\": \n\t\t\t[\n"
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
	tab[res] = "" tab[res] "\n\t\t\t]\n\t\t}\n\t]\n}\n"
	print(tab[res])
}
' CauseOfDeathTrier.txt
