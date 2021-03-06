\name{estimate.ideology}
\alias{estimate.ideology}
\title{Estimates ideology for a given Twitter user}
\usage{
estimate.ideology(user, friends, verbose = TRUE, iters = 5000,
  n.warmup = 1000, thin = 20)
}
\arguments{
  \item{user}{screen name of user for which ideology is to
  be estimated.}

  \item{friends}{vector of user IDs that the user for which
  ideology wants to be estimated follows}

  \item{verbose}{logical, default is \code{TRUE}, which
  generates some output to the R console with information
  about progress of the sampler.}

  \item{iters}{number of iterations of the metropolis
  algorithm. Default is 5000}

  \item{n.warmup}{warmup period for the sampler. Default is
  1000 iterations.}

  \item{thin}{thinning of the sampler. Default is 20.}
}
\description{
\code{estimate.ideology} estimates ideology for a given
user using the Metropolis algorithm developed in Barbera,
2013. It takes as argument of the function a list of user
IDs indicating who a given user follows.
}
\examples{
\dontrun{
## download list of friends for a given user
 friends <- getFriends(screen_name = "p_barbera", oauth_folder="oauth")
## estimating ideology
 results <- estimate.ideology(friends)
}
}
\author{
Pablo Barbera \email{pablo.barbera@nyu.edu}
}

