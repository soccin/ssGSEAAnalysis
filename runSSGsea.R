source("tsv2gct.R")
dd=readr::read_csv("../cc_normcounts.csv")
tsv2gct(dd,"cc_normcounts.gct")
require(ssgsea.GBM.classification)
