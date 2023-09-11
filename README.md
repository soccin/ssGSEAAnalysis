# SS-GSEA Analysis from Wang, et al, Tumor Evolution ...

Reference:

Wang et al., 2017, Tumor Evolution of Glioma-Intrinsic Gene Expression Subtypes Associates with Immunological Changes in the Microenvironment. Cancer Cell 32, 42–56 July 10, 2017. [10.1016/j.ccell.2017.06.003](http://dx.doi.org/10.1016/j.ccell.2017.06.003)

## SETUP

You need to install the R package `ssgsea.GBM.classification` included in this repo.

```
R CMD INSTALL ssgsea.GBM.classification
```

Other required R packages I need to install:

- gtools
- verification
- ROCR
- MCMCpack
- Matrix (version >= 1.6) (note this does not install easily on ARM Macs)

## TIMING

- 10,000 36.88secs
- 100,000 22m3.244s
- 1,000,000

From paper `>=1,00,000`