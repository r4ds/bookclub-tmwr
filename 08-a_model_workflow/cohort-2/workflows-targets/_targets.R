library(targets)
library(tarchetypes)
library(tidymodels)

tar_option_set(packages = c("dplyr", "tidymodels", "tidyverse", "recipes", "workflowsets",  "skimr", "corrr", "GGally"))
source("R/workflow_components.R")

options(clustermq.scheduler = "multicore")

list(
  tar_target(ames_raw, read_csv(here::here("Data", "ames.csv"))),
  tar_target(ames_cleaned, ames_raw %>% mutate(Sale_Price = log10(Sale_Price))),
  tar_target(ames_split,  initial_split(ames_cleaned, prop = 0.80, strata = Sale_Price)),
  tar_target(ames_train, training(ames_split)),
  tar_target(ames_test, testing(ames_split)),
  tar_target(ames_recipe, make_ames_recipe(ames_train)),
  tar_target(lm_model,  linear_reg() %>% set_engine("lm")),
  tar_target(rf_model,  rand_forest() %>% set_mode("regression") %>% set_engine("ranger")),
  tar_target(xgb_model, boost_tree() %>%  set_mode("regression") %>% set_engine("xgboost")),
  tar_target(models, list(lm_model = lm_model, rf_model = rf_model, xgb_model = xgb_model)),
  tar_target(model_names, names(models)),
  tar_target(workflow, make_workflow_sets(models, ames_recipe)),
  tar_target(fitted_models, fit_models(workflow, ames_train)),
  tar_target(predicted, map_dfc(fitted_models$fit, predict, ames_test) %>% setNames(., model_names)),
  tar_target(pred_actual, bind_cols(predicted, ames_test %>% select(Sale_Price))),
  tar_target(ames_metrics, metric_set(rmse, rsq, mae)),
  tar_target(eval, map(model_names, ~  ames_metrics(pred_actual[, c(., "Sale_Price")], truth = Sale_Price, estimate = pred_actual[[.]])) %>% setNames(., model_names) %>% bind_rows(.id = "model")),
  tar_render(report, "report.Rmd", params = list(models = model_names))
)
