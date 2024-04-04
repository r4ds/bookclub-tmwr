# DSLC Tidy Modeling with R Book Club

Welcome to the DSLC Tidy Modeling with R Book Club!

We are working together to read [Tidy Modeling with R](https://www.tmwr.org/) by Max Kuhn and Julia Silge.
Join the #book_club-tidy_modeling_with_r channel on the [DSLC Slack](https://dslc.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.github.io/bookclub-tmwr/).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-tmwr](https://dslcio.slack.com/archives/C01H9SLA48M) channel on Slack)!

- Cohort 1 (started 2021-01-05, ended 2021-10-19): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgP7y2sOGcYNGFd_9pORpYG)
- Cohort 2 (started 2021-02-07, ended 2021-06-06): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGggq4ssmi3KnOMwODhGz33W)
- Cohort 3 (started 2021-03-29, ended 2021-11-08): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGiAi_0odUkLGxz0ZpFlugg-)
- Cohort 4 (started 2021-12-03, ended 2022-07-01): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgb6mnvCMUVWEQ4AtLsIxwS)
- [Cohort 5](https://docs.google.com/spreadsheets/d/1kowl2oUm3sUZSYh5z4w_OWA6UEz9iJINd8i1KkeA2_8/edit#gid=0) (started 2023-04-04, facilitated by Federica Gazzelloni): [Tuesdays, 8:00AM CST/CDT](https://www.timeanddate.com/worldclock/converter.html?iso=20230404T130000&p1=24&p2=1440&p3=215) | [meeting videos](https://youtube.com/playlist?list=PL3x6DOfs2NGgSt6vIGQWtLwZXS2Q7WZlE)


<hr>  

## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

Do these steps once:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI) (also see [_Happy Git and GitHub for the useR_](https://happygitwithr.com/github-acct.html))
2. Install {usethis} and {devtools} `install.packages(c("usethis", "devtools"))`
3. Set up a default {usethis} directory:
  - `usethis::edit_r_profile()` to open your profile for editing.
  - Add this line: `options(usethis.destdir = "YOURDIR")` (replace `YOURDIR` with the root directory under which you want your R projects to appear; or you can skip these steps, and the project will be saved to your Desktop).
  - Restart your R session (Session/Restart R in Rstudio).
4. `usethis::create_from_github("r4ds/bookclub-tmwr")` (cleanly creates your own copy of this repository).

Do these steps each time you present another chapter:

1. Open your project for this book.
2. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion, making sure that you have the latest changes from other contributors; replace `my-chapter` with a descriptive name, ideally).
3. `devtools::install_dev_deps()` (installs any packages used by the book that you don't already have installed).
4. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
5. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
6. Build the book! ctrl-shift-b (or command-shift-b) will render the full book, or ctrl-shift-k (command-shift-k) to render just your slide. Please do this to make sure it works before you push your changes up to the main repo!
7. Commit your changes (either through the command line or using Rstudio's Git tab).
8. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready).
9. (If we request changes, make them)
10. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.
11. Now that your local copy is up-to-date with the main repo, you need to update your remote fork. Run `gert::git_push("origin")` or click the `Push` button on the `Git` tab of Rstudio.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.github.io/bookclub-tmwr/).
