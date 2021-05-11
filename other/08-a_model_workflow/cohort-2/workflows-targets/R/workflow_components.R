make_ames_recipe <- function(data) {

    recipe(Sale_Price ~ Neighborhood + Gr_Liv_Area + Year_Built + Bldg_Type +
             Latitude + Longitude, data = data) %>%
    step_log(Gr_Liv_Area, base = 10) %>%
    step_other(Neighborhood, threshold = 0.01) %>%
    step_dummy(all_nominal_predictors()) %>%
    step_interact( ~ Gr_Liv_Area:starts_with("Bldg_Type_") ) %>%
    step_ns(Latitude, Longitude, deg_free = 20)

}


make_workflow_sets <- function(model_list, recipe) {

  workflow_set(preproc = list(recipe), models = model_list)

}

fit_models <- function(workflow, train) {

  workflow %>%
    mutate(fit = map(info, ~ fit(.x$workflow[[1]], train)))

}
