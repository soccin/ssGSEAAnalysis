source("tsv2gct.R")

FILE="../cc_normcounts.csv"
GCT_FILE=gsub(".csv",".gct",basename(FILE))

dd=readr::read_csv(FILE)
tsv2gct(dd,GCT_FILE)

require(ssgsea.GBM.classification)

num_perm=100
runSsGSEAwithPermutation(GCT_FILE,num_perm)

