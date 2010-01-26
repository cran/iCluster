############################################
#This is an example of iCluster implementation 
#using the Pollack study breast cancer data  
#set. DNA and mRNA data measured in 37 primary 
#tumors and four cell lines on chromosome 17 
#are included.
#last update: 11/07/09
############################################

#load("/home/nfs/moq/Gdrive/iCluster/iCluster/data/breast.chr17.Rdata")

data("breast.chr17.Rdata")
#source("iCluster.R")
 #setting the penalty parameter lambda=0 returns non-sparse fit
fit=iCluster(datasets, k=4, lambda=0.2, max.iter=50)

#source("plot.separability.R")
plot.iCluster(fit=fit, label=rownames(datasets[[2]]))

#source("compute.pod.R")
compute.pod(fit)



 

                                               


