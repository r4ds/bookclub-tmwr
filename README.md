# R4DS Tidy Modeling with R Book Club

Welcome to the R4DS Tidy Modeling with R Book Club!

We are working together to read [Tidy Modeling with R](https://www.tmwr.org/) by Max Kuhn and Julia Silge.
Join the #book_club-tidy_modeling_with_r channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.github.io/bookclub-tmwr/).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-tmwr](https://rfordatascience.slack.com/archives/BOOKCHANNELID) channel on Slack)!

- Cohort 1 (started 2021-01-05, ended 2021-10-19): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgP7y2sOGcYNGFd_9pORpYG)
- Cohort 2 (started 2021-02-07, ended 2021-06-06): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGggq4ssmi3KnOMwODhGz33W)
- Cohort 3 (started 2021-03-29, ended 2021-11-08): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGiAi_0odUkLGxz0ZpFlugg-)
- [Cohort 4](https://docs.google.com/spreadsheets/d/1-S1UbKWay_TeR5n9LkztZY2XXrMjZr3snl1srPvTvH4/edit#gid=0) (started 2021-12-03): [Fridays, 8:30am CST/CDT](https://www.timeanddate.com/worldclock/converter.html?iso=20211203T140000&p1=24) | [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgb6mnvCMUVWEQ4AtLsIxwS)


<hr>  

## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI)
2. Fork this repository.
3. Create a New Project in RStudio using your fork.
4. Install dependencies for this book with `devtools::install_dev_deps()` (technically optional but it's nice to be able to rebuild the full book).
5. Create a New Branch in your fork for your work.
6. Edit the appropriate chapter file. Use `##` to indicate new slides (new sections).
7. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
8. Commit your changes.
9. Push your changes to your branch.
10. Open a Pull Request (PR) to let us know that your slides are ready.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.github.io/bookclub-tmwr/).
