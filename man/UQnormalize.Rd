\name{UQnormalize}
\alias{UQnormalize}
\alias{TCnormalize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Upper-quartile/total-count normalization of raw sgRNA read count data
%%  ~~function to do ... ~~
}
\description{Apply the upper-quartile/total-count normalization to raw sgRNA read count data. In addition, this function can merge pairs of sgRNA read counts in different replications when CRISPR/Cas9 knockout screens are implemented with a few replications.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
UQnormalize(raw.count, trt, ctrl, round = TRUE, add.one = TRUE, print = FALSE)
TCnormalize(raw.count, trt, ctrl, round = TRUE, add.one = TRUE, print = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{raw.count}{A data.frame with raw sgRNA read counts. Rows represent sgRNAs and columns are the sgRNA names (1st), targeting gene names (2nd), and raw counts under multiple experimental conditions.
  %%     ~~Describe \code{raw.count} here~~
}
  \item{trt}{A character vector of column names of \code{raw.count} corresponding to treatment conditions. Column names in the \code{trt} and \code{ctrl} vector should be paired.
%%     ~~Describe \code{trt} here~~
}
  \item{ctrl}{A character vector of column names of \code{raw.count} corresponding to control conditions.
%%     ~~Describe \code{ctrl} here~~
}
  \item{round}{Default is \code{TRUE}. If \code{TRUE} counts are rounded after setting the upper-quartile in each condition to be equal.
%%     ~~Describe \code{round} here~~
}
  \item{add.one}{Default is \code{TRUE}. If \code{TRUE} this function adds one to all counts to make all the counts greater than or equal to one.
%%     ~~Describe \code{add.one} here~~
}
  \item{print}{Default is \code{FALSE}. If \code{TRUE} it prints upper-quartiles of counts in different conditions before/after the normalization.
%%     ~~Describe \code{print} here~~
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{Returns a data.frame with sgRNA name, targeting gene name and normalized counts under treatment and control.
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
