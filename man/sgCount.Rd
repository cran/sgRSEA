\name{sgCount}
\alias{sgCount}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generate a raw sgRNA read count table from fastq files
%%  ~~function to do ... ~~
}
\description{Generate a raw sgRNA read count table from fastq files and an annotation file. The raw count table can be an input of \code{UQnormalize()} to apply \code{sgRSEA()}. Python is required.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sgCount(fqInfo, annotation, seqlen = 20, output_prefix = "sgCount")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fqInfo}{A tab-delimited text file. Rows represent fastq files and four cloumns are fastq filename, experimental condition name, starting and ending location of trimming of sgRNA reads. See the example below.
%%     ~~Describe \code{fqInfo} here~~
}
  \item{annotation}{A tab-delimited annotation file. Columns are sgRNA name (1st), gene name (2nd), and sgRNA sequence read (3rd).
%%     ~~Describe \code{annotation} here~~
}
  \item{seqlen}{Length of the sgRNA read.
%%     ~~Describe \code{seqlen} here~~
}
  \item{output_prefix}{A \code{character()} value. The name of output file is "\emph{output_prefix}_count.txt".
%%     ~~Describe \code{output_prefix} here~~
}
}
\details{This function calls a python code located at \code{system.file(package = "sgRSEA")}. 
%%  ~~ If necessary, more details than the description above ~~
}
\value{Generate a tab-delimited file of sgRNA read count table. Columns are sgRNAs, genes and read counts at multiple experimental conditions.
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

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
##	A toy example
##	example input files can be found at .libPaths()/sgRSEA/extdata.
##	sgCount('fqInfo.txt', 'library2.txt', 20, 'Test')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
