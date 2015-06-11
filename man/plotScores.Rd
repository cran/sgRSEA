\name{plotScores}
\alias{plotScores}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot histograms of gene scores
%%  ~~function to do ... ~~
}
\description{Plot histograms of permuation/observed gene scores for a given level of the number of sgRNAs within a gene. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotScores(sgRSEA.out, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sgRSEA.out}{Output list of \code{sgRSEA()}.
%%     ~~Describe \code{sgRSEA.out} here~~
}
  \item{m}{The number of sgRNAs within a gene.
%%     ~~Describe \code{m} here~~
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{Gererate a plot.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
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
