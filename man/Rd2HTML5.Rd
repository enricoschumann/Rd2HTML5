\name{Rd2HTML5}
\alias{Rd2HTML5}
\alias{Rd2HTML5-package}
\title{
  Transform Rd Into HTML5
}
\description{
  Transform Rd files into HTML5.
}
\usage{
Rd2HTML5(Rd, out = "", package = "", sections = TRUE, classes = TRUE)
}
\arguments{
  \item{Rd}{
    character
}
  \item{out}{
    character
}
  \item{package}{
    character
}
  \item{sections}{
    logical
}
  \item{classes}{
    logical
}
}
\details{

  The function transforms Rd files into HTML5. Most of
  the works is actually done by
  \code{\link[tools]{Rd2HTML}} in \pkg{tools}.

}
\value{
  character
}
\references{

  Murdoch, D. (2010) Parsing Rd files.
  \url{https://developer.r-project.org/parseRd.pdf}

}
\author{
  Enrico Schumann
}
\seealso{
  \code{\link[tools]{parse_Rd}}
}
\examples{
## will be added when the function is stable
}
