% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/archivePackages.R
\name{archivePackages}
\alias{archivePackages}
\alias{archivePackagesForAllRversions}
\title{Move older copies of packages to an archive}
\usage{
archivePackages(
  repopath = getOption("dratRepo", "~/git/drat"),
  type = c("source", "binary", "mac.binary", "mac.binary.big-sur-x86_64",
    "mac.binary.big-sur-arm64", "mac.binary.el-capitan", "mac.binary.mavericks",
    "win.binary", "both"),
  pkg,
  version = getRversion()
)

archivePackagesForAllRversions(
  repopath = getOption("dratRepo", "~/git/drat"),
  type = c("source", "binary", "mac.binary", "mac.binary.big-sur-x86_64",
    "mac.binary.big-sur-arm64", "mac.binary.el-capitan", "mac.binary.mavericks",
    "win.binary", "both"),
  pkg
)
}
\arguments{
\item{repopath}{Character variable with the path to the repo;
defaults to the value of the \dQuote{dratRepo} option with
\dQuote{"~/git/drat"} as fallback}

\item{type}{Character variable for the type of repository, so far
\dQuote{source}, \dQuote{binary}, \dQuote{win.binary}, \dQuote{mac.binary},
\dQuote{mac.binary.big-sur-x86_64},
\dQuote{mac.binary.big-sur-arm64},
\dQuote{mac.binary.mavericks}, \dQuote{mac.binary.el-capitan} or
\dQuote{both}}

\item{pkg}{Optional character variable specifying a package name(s), whose
older versions should be archived. If missing (the default), archiving is
performed on all packages.}

\item{version}{R version information in the format \code{X.Y} or
\code{X.Y.Z}. Only used, if archiving binary packages.
(default: \code{version = getRversion()}). If \code{version = NA}, all
available R versions will be used. If \code{version = NULL}, this defaults
to \code{getRversion()}.}
}
\description{
The function moves older versions of packages into a CRAN-style
archive folder.
}
\details{
This function is still undergoing development and polish and may
change in subsequent versions.
}
\examples{
\dontrun{
  archivePackages()   # archive all older package versions
  archivePackages(pkg = "drat")  # archive older copies of just one package
}
}
\author{
Thomas J. Leeper
}
