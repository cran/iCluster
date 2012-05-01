\name{plotHeatmap}
\alias{plotHeatmap}
\title{A function to generate heatmap panels sorted by integrated cluster assignment.}
\description{
  A function to generate heatmap panels sorted by integrated cluster assignment.
}
\usage{
plotHeatmap(fit, datasets, sample.order=NULL, feature.order=NULL, 
width=5, scale=NULL, col.scheme=NULL, sparse=NULL, threshold=NULL, 
chr=NULL, plot.chr=NULL, cap=NULL)
}
\arguments{
  \item{fit}{A iCluster object}
  \item{datasets}{A list object of data matrices}
  \item{feature.order}{A vector of logical values each specificy whether the genomic features in the corresponding data matrix should be reordered by similarity. Default is FALSE.}
  \item{sparse}{A vector of logical values each specificy whether to plot the top cluster-discriminant features. Default is FALSE.}
  \item{threshold}{When sparse is TRUE, a vector of threshold values to include the genomic features for which the absolute value of the associated coefficient estimates fall in the top quantile. threshold=c(0.25,0.25) takes the top quartile most discriminant features in data type 1 and data type 2 for plot.}
  \item{plot.chr}{A vector of logical values each specificy whether to annotate chromosome number on the left of the panel. Typically used for copy number data type. Default is FALSE.}
  \item{chr}{A vector of chromosome number.}
  \item{col.scheme}{Color scheme. Can use bluered(n) in gplots R package.}
  \item{sample.order}{User supplied cluster assignment.}
  \item{width}{Width of the figure in inches}
  \item{cap}{Image color option}
  \item{scale}{A vector of logical values each specify whether data should be scaled. Default is FALSE.}

}
\seealso{
  \code{\link{iCluster}},\code{\link{iCluster2}}
}
\value{
  no value returned.
}
\examples{
#library(iCluster)
#data(gbm)
#data(coord)
#chr=chr[,1]
#fit=iCluster2(datasets=gbm, k=3, lambda=list(0.44,0.33,0.28))           
#plotHeatmap(fit=fit, datasets=datasets, feature.order=c(FALSE,TRUE,TRUE),
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
\keyword{models}

