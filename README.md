# R4DS Tidy Modeling with R Book Club

Welcome to the R4DS Tidy Modeling with R Book Club!

We are working together to read [Tidy Modeling with R](https://www.tmwr.org/) by Max Kuhn and Julia Silge.
Join the #book_club-tidy_modeling_with_r channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.github.io/bookclub-tmwr/).

## Meeting Schedule

If you would like to present, please add your name next to a chapter using the [GitHub Web Editor](https://youtu.be/d41oc2OMAuI)!

*Cohort 1: (starts 2021-01-05) - Tuesdays, 8:00pm EST/EDT*

- 2021-01-05: Chapter 1: Software for modeling: Jon Harmon
- 2021-01-12: Chapter 2: A tidyverse primer: Jonathan Trattner
- 2021-01-19: Chapter 3: A review of R modeling fundamentals: Tony ElHabr
- 2021-01-26: Chapter 4: The Ames housing data: Tan Ho
- 2021-02-02: Chapter 5: Spending our data: Asmae Toumi
- 2021-02-09: Chapter 6: Feature engineering with recipes: Pavitra Chakravarty
- 2021-02-16: Chapter 7: Fitting models with parsnip: Jordan Krogmann
- 2021-02-23: Chapter 8: A model workflow: Ben Gramza
- 2021-03-02: Chapter 9: Judging model effectiveness: Joe Sydlowski
- 2021-03-09: Q&A with authors Max Kuhn & Julia Silge: Chapters 1-9
- 2021-03-16: Chapter 10: Resampling for evaluating performance: Asmae Toumi/Jon Harmon
- 2021-03-23: Chapter 11: Comparing models with resampling: Jon Harmon
- 2021-03-30: Chapter 12: Modeling tuning and the dangers of overfitting: Andrew Farina
- 2021-04-06: Chapter 13: Grid search: Jim Gruman
- **2021-04-13: Chapter 14: Iterative search: Asmae Toumi**
- 2021-04-20: Chapter 15: Screening many models: Tan Ho
- 2021-04-27: What we missed about {workflowsets}
- 2021-05-04: Review: Chapters 10-15


*Cohort 3: - Mondays, 11:00am CDT - facilitated by Ildiko Czeller*


- 2021-03-29: Chapter 1: Software for modeling: Ildiko Czeller
- 2021-04-05: Chapter 2: A tidyverse primer: Daniel Chen
- 2021-04-12: Chapter 3: A review of R modeling fundamentals: Edgar Zamora
- 2021-04-19: Chapter 4: The Ames housing data: Jiwan Heo

<details>
  <summary> Future Meetings </summary>

- 2021-04-26: Chapter 5: Spending our data
- 2021-05-03: Chapter 6: Feature engineering with recipes: Chris Martin
- 2021-0?-??: Chapter 7: Fitting models with parsnip
- 2021-0?-??: Chapter 8: A model workflow
- 2021-0?-??: Chapter 9: Judging model effectiveness
- 2021-0?-??: Chapter 10: Resampling for evaluating performance
- 2021-0?-??: Chapter 11: Comparing models with resampling
- 2021-0?-??: Chapter 12: Modeling tuning and the dangers of overfitting
- 2021-0?-??: Chapter 13: Grid search
- 2021-0?-??: Chapter 14: Iterative search

</details>
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
