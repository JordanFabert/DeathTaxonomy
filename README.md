# DeathTaxonomy
Taxonomy of Death Possibilities

Creating a Taxonomy for MISP

# Creation of the JSON

Usage of the website http://www.wolfbane.com/icd/index.html for the Death Possibilities (International List of Causes of Death and Diseases)

Copy of the data on a text File, then usage of the sed command 
> sed 's/ /¤ /' Filename.txt > OutputFilename.txt

Usage of the awk script [separator.awk](AWK_Files/separator.awk) to organise the datas (result in [CauseOfDeathTrier.txt](Text_Files/CauseOfDeathTrier.txt)) 

Usage of the awk script [createJsonFormat.awk](AWK_Files/createJsonFormat.awk) to create the Json file in the MISP format ([DeathPossibilitiesTaxonomy.json](DeathPossibilitiesTaxonomy.json))

# TO-DO LIST

- [x] Creating a MISP Formated Json
- [ ] Verifying if the format is working
- [ ] [Validation by the MISP team in charge of project](https://github.com/JordanFabert/DeathTaxonomy#misp-team-in-charge-of-the-project)

# Collaborators 

- Jordan FABERT : https://github.com/JordanFabert
- Damien MOLLIERE : https://github.com/M2O2

![Joda](https://user-images.githubusercontent.com/45102082/154300725-88c043a7-e0a6-4e06-8117-b4eec9e25713.png)


# MISP Team in charge of the Project 

- Alexandre DULAUNOY : https://github.com/adulau
- Raphaël VINOT : https://github.com/Rafiot
