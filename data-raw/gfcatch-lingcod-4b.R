# Read GFCatch Inside Lingcod Catch Data

## Load packages ---------------------------------------------------------------

library(dplyr)
# remotes::install_github("pbs-assess/gfdata")
library(gfdata)

## Load scripts ----------------------------------------------------------------

source("R/utils.R")

## Read GFCatch data -----------------------------------------------------------

gfcatch_lingcod_4b <- gfdata::get_catch(
  species = "467",
  major = "01"
) |>
  dplyr::select(
    fishery_sector,
    gear,
    year,
    best_date,
    best_depth,
    species_code,
    species_common_name,
    species_scientific_name,
    landed_kg,
    discarded_kg,
    landed_pcs,
    discarded_pcs,
    major_stat_area_name,
    minor_stat_area_code
  )

# View data --------------------------------------------------------------------

tibble::view(gfcatch_lingcod_4b)

## Write to data/ --------------------------------------------------------------

write_data(gfcatch_lingcod_4b, path = "data")
