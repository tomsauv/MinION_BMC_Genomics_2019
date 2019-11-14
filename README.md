# MinION flow cell output metadata (R9.0 and R9.4) 

This repository contains:

A tab delimited file of 1D run metadata gathered from published studies
```
MinION_metadata.txt
```

An R script to produce the figure below with packagae ggplot2
```
MinION_metaplot.r
```

The metadata includes (per flow cell):

  1. Number of 1D reads (in millions)

  2. Average 1D read length (in Kbp)

  3. Flow cell 1D yield (in Gbp).

Interested users may easily add/subsitute their data and run the script to examine their flow cell output.

![Screenshot](MinION_metaplot.png)

# Citation

Sauvage et al. 2019. **Promising prospects of nanopore sequencing for algal hologenomics and structural variation discovery**. _BMC Genomics_ 20:850. DOI:10.1186/s12864-019-6248-2


