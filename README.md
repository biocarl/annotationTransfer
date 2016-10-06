# annotationTransfer
Programm for supporting/correction annotation transfer, utilizing RATT (see: http://ratt.sourceforge.net/)

This was done during a internship at Laboratório de Genética Celular e Molecular, UFMG (Belo Horizonte, Brazil) under the supervision of Prof. Vasco Ariston de Carvalho Azevedo (UFMG)

--------------------------------

README:

IMPORTANT: In order to use that program several dependencies have to be installed before. For further instructions see dependencies/INSTALL.

In order to provide RAST-Annotations there is also a Install-Script for the RAST batch interface, see also: http://blog.theseed.org/servers/usage/the-rast-batch-interface.html

|main.py

This program uitilizes RATT in order to transfer annotations from one organism to a closly related organism. For detailed description see the -h option of main.py
example:
>python main.py --rast CUL_RAST_CLEAN.embl --query CUL_104_4-1.fasta --reference embl/ --output OUT/CUL_curated

The following scripts are used by main.py but can also used separately

|RATT_Correction.py
Parses a embl-file an applies the correct colour-code to each feature, based on joined-regions, missing start/stop-Codons and Stop-Codons in a coding-region

|mergeFeatures.py
Adds features from embl-file (e.g. rast-annotated) to another embl-file (e.g. ratt-annotaed) if there are no interference of the feature-positions 
