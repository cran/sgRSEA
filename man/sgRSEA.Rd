\name{sgRSEA}
\alias{sgRSEA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Perform a permutation test which computes gene scores and their significance 
%%  ~~function to do ... ~~
}
\description{Given normalized sgRNA read counts under treatment and control, this function computes sgRNA and gene level statistics. P-values of the gene scores are calculated by a permutation method to identify genes where some or all of the sgRNA read counts in treatment are significantly higher/lower compared to control, that is, genes with positive/negative treatment effect.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sgRSEA(dat, multiplier = 50, r.seed = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{A data.frame where rows represent sgRNAs and columns are the sgRNA name (1st), targeting gene name (2nd), and sgRNA read counts under treatment (3rd) and control (4th) condition.
%%     ~~Describe \code{dat} here~~
}
  \item{multiplier}{The number of permutations. The default value is \eqn{R=50}. A normalized null distribution for the gene score is constructed based on \eqn{R \times}(total number of genes) permutation gene scores.
%%     ~~Describe \code{multiplier} here~~
}
  \item{r.seed}{A random seed to control the randomness of the permutation.
%%     ~~Describe \code{r.seed} here~~
}
}
\details{sgRNA level statistics within genes are summarized by using the maxmean statistic (Efron and Tibshirani, 2007).
%%  ~~ If necessary, more details than the description above ~~
}
\value{Returns a list containing:
\item{gene.pos }{Test results for the alternative hypothesis of positive treatment effect. Rows represent genes and columns are the numbers of sgRNAs within genes, normalized gene scores, P-values, adjusted P-values (FDRs) by the Bejamini-Hochberg method, and ranks of genes.}
\item{gene.neg }{Test results for the alternative hypothesis of negative treatment effect. }
\item{stdTmat }{Normalized observed gene scores.}
\item{stdNullTmat }{Normalized permutation gene scores.}
\item{Tmat }{Observed gene scores.}
\item{NullTmat }{Permutation gene scores.}
\item{sgRNA.stat }{The input data.frame added with the sgRNA/gene scores and the numbers of sgRNAs within genes.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Efron, B. and Tibshirani, R. (2007). On testing the significance of sets of genes. \emph{The Annals of Applied Statistics}, \bold{1}(1):107--129. \cr
Noh, J., Chen, B., Xiao, G. and Xie, Y. (2015+). A robust test for identification of essential genes from CRISPR/Cas9 knockout screens.
%% ~put references to the literature/web site here ~
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{UQnormalize}},  \code{\link{melanoma808}}, \code{\link{plotScores}}, \code{\link{plotNScores}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(melanoma808)
dat = UQnormalize(melanoma808, trt=c('PLX7_R1','PLX7_R2'), ctrl=c('D7_R1','D7_R2'))
results = sgRSEA(dat=dat, multiplier=30)
##	To see the top 10 genes with positive/negative treatment effect
results$gene.pos[1:10,]
results$gene.neg[1:10,]

##	histograms of permutation and observed gene scores
##	plotNScores(results)
##	plotScores(results, m=8)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
