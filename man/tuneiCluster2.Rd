\name{tune.iCluster2}
\alias{tune.iCluster2}
\title{Model tuning function}
\description{
Model tuning process for choosing the number of clusters k and the lasso penalty parameters.
}
\usage{
tune.iCluster2(datasets, k, n.lambda,nrep, mc.cores,max.iter)
}
\arguments{
  \item{datasets}{A list containing data matrices. For each data matrix, the
    rows represent samples, and the columns represent genomic features.}
  \item{k}{Number of classes for the samples.}
  \item{nrep}{Number of training and test data partition for computing the reproducibility index.}
  \item{n.lambda}{The number of sampled points for the uniform design. Use the default value by setting n.lambda=NULL}
  \item{mc.cores}{Number of cores to use for parallel computation.}
  \item{max.iter}{Number of EM iterations.}
}
\seealso{
  \code{\link{iCluster2}},\code{\link{plotiCluster}}, \code{\link{compute.pod}}, \code{\link{plotHeatmap}}
}
\value{
  A list with the following elements.
  \item{best.fit}{Model fit under the optimal lambda values that give the highest reproducibility index.}
  \item{RI}{A vector of reproducibility index associated with each of the sampled lambda combination.}
  \item{ud}{Sampled lambda combinations under the uniform design}
}
\examples{
library(iCluster)
library(caTools, lib.loc="/apps/Rlib64/")
library(gdata, lib.loc="/apps/Rlib64/")
library(gtools, lib.loc="/apps/Rlib64/")
library(gplots, lib.loc="/apps/Rlib64/")
library(lattice, lib.loc="/apps/Rlib64/")
library(parallel, lib.loc="/apps/Rlib64/")

#data(simu.datasets)

#cv.fit=alist()
#for(k in 2:5){
#  cat(paste("K=",k,sep=""),'\n')
#  cv.fit[[k]]=tune.iCluster2(simu.datasets, k, mc.cores=6)
#}

##Reproducibility index (RI) plot
#plotRI(cv.fit)

##Based on the RI plot, k=3 is the best solution
#best.fit=cv.fit[[3]]$best.fit

##Try different color schemes
#plotHeatmap(fit=best.fit,datasets=simu.datasets,
#sparse=c(TRUE,TRUE),col.scheme=list(bluered(256), greenred(256)))

}
\author{Ronglai Shen \email{shenr@mskcc.org}}
\references{
  Ronglai Shen, Adam Olshen, Marc Ladanyi. (2009). Integrative
  clustering of multiple genomic data types using a joint latent
  variable model with application to breast and lung cancer subtype
  analysis. \emph{Bioinformatics} 25, 2906-2912.

  Ronglai Shen, Qianxing Mo, Nikolaus Schultz, Venkatraman E. Seshan, Adam B. Olshen, Jason Huse, Marc Ladanyi, Chris Sander. (2012). Integrative Subtype Discovery in Glioblastoma Using iCluster. \emph{PLoS ONE} 7, e35236 
}
\keyword{Data integration, subtype discovery, latent variable model}

