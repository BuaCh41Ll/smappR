\name{getFriends}
\alias{getFriends}
\title{Returns the list of user IDs a given Twitter user follows}
\usage{
getFriends(screen_name = NULL, oauth_folder, cursor = -1, user_id = NULL,
  verbose = TRUE, sleep = 1)
}
\arguments{
  \item{screen_name}{user name of the Twitter user for
  which their friends will be downloaded}

  \item{oauth_folder}{folder where OAuth tokens are
  stored.}

  \item{cursor}{See
  \url{https://dev.twitter.com/docs/api/1.1/get/friends/ids}}

  \item{user_id}{user id of the Twitter user for which
  their friends will be downloaded}

  \item{verbose}{If \code{TRUE}, prints information about
  API calls on console}

  \item{sleep}{Number of seconds to sleep between API
  calls.}
}
\description{
\code{getFriends} connects to the REST API of Twitter and
returns the list of user IDs a given user follows. Note
that this function allows the use of multiple OAuth token
to make the process more efficient.
}
\examples{
\dontrun{
## Download list of friends of user "p_barbera"
 friends <- getFriends(screen_name="p_barbera", oauth_folder="oauth")
}
}
\author{
Pablo Barbera \email{pablo.barbera@nyu.edu}
}

