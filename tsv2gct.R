tsv2gct<-function(tbl) {


    line1<-'#1.2'
    line2<-paste(num_rows,num_perm,sep='\t')
    line3<-paste('X',1:num_perm,sep='',collapse='\t')
    line3<-paste('NAME','Description',line3, sep='\t')
    write.table(line1, paste(profile_data_path,'/random_profile_',profile_data_name,'.gct',sep=""),quote=F,col.name=F,row.name=F) #first line for the gct file
    write.table(line2, paste(profile_data_path,'/random_profile_',profile_data_name,'.gct',sep=""),quote=F,col.name=F,row.name=F,append=T)  # 2nd line for the gct file
    write.table(line3, paste(profile_data_path,'/random_profile_',profile_data_name,'.gct',sep=""),quote=F,col.name=F,row.name=F,append=T)  # 2nd line for the gct file

}