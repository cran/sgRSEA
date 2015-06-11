\name{sgRSEA.mean}
\alias{sgRSEA.mean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Perform a permutation test similar to sgRSEA
%%  ~~function to do ... ~~
}
\description{Perform the similar method to sgRSEA using a simple average instead of the maxmean statistic as gene level statistics. This method is referred as \eqn{T_{mean}} in Noh et al. (2015+).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sgRSEA.mean(dat, multiplier = 50, r.seed = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{A data.frame where rows represent sgRNAs and columns are the sgRNA name (1st), targeting gene name (2nd), and sgRNA read counts under treatment (3rd) and control (4th) condition.
%%     ~~Describe \code{dat} here~~
}
  \item{multiplier}{The number of permutations.
%%     ~~Describe \code{multiplier} here~~
}
  \item{r.seed}{A random seed to control the randomness of the permutation.
%%     ~~Describe \code{r.seed} here~~
}
}
\details{Arguments and Value are the same as \code{sgRSEA()}.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Returns the same list as \code{sgRSEA()}.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Noh, J., Chen, B., Xiao, G. and Xie, Y. (2015+). A robust test for identification of essential genes from CRISPR/Cas9 knockout screens.
%% ~put references to the literature/web site here ~
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{sgRSEA}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
