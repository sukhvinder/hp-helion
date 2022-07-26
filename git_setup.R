library(usethis)
library(gitcreds)


usethis::use_git_config(user.name = "Sukhvinder Kumar", user.email = "sukhvinderkumar@gmail.com")
usethis::create_github_token()
gitcreds::gitcreds_set()

usethis::use_git()
usethis::use_github()
