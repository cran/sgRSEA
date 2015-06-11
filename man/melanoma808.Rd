\name{melanoma808}
\alias{melanoma808}
\docType{data}
\title{A subset of CRISPR/Cas9 knockout screening data on melanoma cell lines
%%   ~~ data name/kind ... ~~
}
\description{This is a subset of the data from a positive selection screening experiment on the melanoma cell lines by Shalem et al. (2014). It was obtained from Li et al. (2014).
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(melanoma808)}
\format{
  A data frame. Rows represent sgRNAs and columns are the sgRNA name, targeting gene name, and raw sgRNA read counts at sevel experimental conditions.
}
\source{Li W, Xu H, Xiao T, Cong L, Love MI, Zhang F et al. (2014). MAGeCK enables robust identification of essential genes from genome-scale CRISPR/Cas9 knockout screens. \emph{Genome Biol.} \bold{15}(12):554. \cr
Shalem O, Sanjana NE, Hartenian E, Shi X, Scott DA, Mikkelsen TS et al. (2014). Genome-scale CRISPR-Cas9 knockout screening in human cells. \emph{Science}. \bold{343}(6166):84-7.
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(melanoma808)
}
