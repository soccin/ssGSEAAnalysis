source("tsv2gct.R")

FILE="../cc_normcounts.csv"
GCT_FILE=gsub(".csv",".gct",basename(FILE))

dd=readr::read_csv(FILE)
tsv2gct(dd,GCT_FILE)

require(ssgsea.GBM.classification)

#
# Do not run by default
#
num_perm=10
if(0) {
    runSsGSEAwithPermutation(GCT_FILE,num_perm)
}

