\name{iCluster2}
\alias{iCluster2}
\title{A variant of the iCluster method with variance weighted shrinkage}
\description{
iCluster function with variance-weighted shrinkage (see Shen et al. PLoS ONE, 2012)
}
\usage{
iCluster2(datasets, k, lambda=NULL, scale=T, scalar=F, max.iter=10, verbose=T)
}
\arguments{
  \item{datasets}{A list containing data matrices. For each data matrix, the
    rows represent samples, and the columns represent genomic features.}
  \item{k}{Number of classes for the samples.}
  \item{lambda}{Penalty term for the coefficient matrix of the iCluster model.}
  \item{scalar}{Logical value. If true, a degenerate version assuming scalar covariance matrix is used.}
  \item{max.iter}{maximum iteration for the EM algorithm}
  \item{scale}{Logical value. If true, data matrix is column centered}
  \item{verbose}{Logical value. If true, print message.}
}
\seealso{
  \code{\link{tune.iCluster2}}, \code{\link{plotiCluster}}, \code{\link{compute.pod}}, \code{\link{plotHeatmap}}
}
\value{
  A list with the following elements.
  \item{expZ}{Latent variable matrix}
  \item{W}{The iCluster model coefficient matrix}
  \item{PSI}{The estimated covariance matrix}
  \item{clusters}{Cluster indicator for samples}
}
\examples{
library(iCluster)
library(caTools, lib.loc="/apps/Rlib64/")
library(gdata, lib.loc="/apps/Rlib64/")
library(gtools, lib.loc="/apps/Rlib64/")
library(gplots, lib.loc="/apps/Rlib64/")
library(lattice, lib.loc="/apps/Rlib64/")
data(gbm)

#setting the penalty parameter lambda=0 returns non-sparse fit
#fit=iCluster2(datasets=gbm, k=3, lambda=list(0.44,0.33,0.28))

#plotiCluster(fit=fit, label=rownames(gbm[[1]]))

#compute.pod(fit)

#data(coord)
#chr=coord[,1]
#plotHeatmap(fit=fit, data=gbm, feature.order=c(FALSE,TRUE,TRUE),
#sparse=c(FALSE,TRUE,TRUE),plot.chr=c(TRUE,FALSE,FALSE), chr=chr)
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

