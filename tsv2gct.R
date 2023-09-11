suppressPackageStartupMessages({library(dplyr)})
tsv2gct<-function(tbl,file_name) {

    line2 <- paste(nrow(tbl),ncol(tbl)-1,sep='\t')

    gct_tbl <- tbl %>%
        rename(NAME=1) %>%
        mutate(Description=NAME) %>%
        select(NAME,Description,everything())

    #
    # first line of gct is version comment must be "#1.2"
    # second line is rows, cols (data cols)
    #
    write.table("#1.2", file_name, quote=F, col.name=F, row.name=F)
    write.table(line2, file_name, quote=F, col.name=F, row.name=F, append=T)
    write.table(gct_tbl, file_name, quote=F, row.name=F, append=T)

}

