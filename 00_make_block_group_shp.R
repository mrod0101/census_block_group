library(tidyverse)
library(sf)

# 2010
blk_grps_sf_2010 <- st_read("./nhgis0002_shape/nhgis0002_shapefile_tl2010_us_blck_grp_2010/US_blck_grp_2010.shp")

blk_grps_sf_2010 <- st_transform(blk_grps_sf_2010, crs=5072) %>%
  dplyr::select(fips_block_group_id_2010 = GEOID10,
                geometry)

saveRDS(blk_grps_sf_2010, "block_groups_2010_5072.rds")

# 2000
blk_grps_sf_2000 <- st_read("/Users/RASV5G/Downloads/nhgis0015_shape/nhgis0015_shapefile_tl2000_us_blck_grp_2000/US_blck_grp_2000.shp")

blk_grps_sf_2000 <- st_transform(blk_grps_sf_2000, crs=5072) %>%
  dplyr::select(fips_block_group_id_2000 = STFID,
                geometry) %>%
  mutate(fips_block_group_id_2000 = as.character(fips_block_group_id_2000))

saveRDS(blk_grps_sf_2000, "block_groups_2000_5072.rds")
# geography <- readRDS('block_groups_2000_5072.rds')

# 1990
blk_grps_sf_1990 <- st_read("/Users/RASV5G/Downloads/nhgis0016_shape/nhgis0016_shapefile_tl2000_us_blck_grp_1990/US_blck_grp_1990.shp")

blk_grps_sf_1990 <- st_transform(blk_grps_sf_1990, crs=5072) %>%
  dplyr::select(fips_block_group_id_1990 = STFID,
                geometry) %>%
  mutate(fips_block_group_id_1990 = as.character(fips_block_group_id_1990))

saveRDS(blk_grps_sf_1990, "block_groups_1990_5072.rds")

# 1980
tracts_sf_1980 <- st_read('/Users/RASV5G/Downloads/nhgis0018_shape/nhgis0018_shapefile_tl2000_us_tract_1980/US_tract_1980.shp')

tracts_sf_1980 <- st_transform(tracts_sf_1980, crs=5072) %>%
  dplyr::select(fips_tract_id_1980 = GISJOIN2,
                geometry) %>%
  mutate(fips_tract_id_1980 = as.character(fips_tract_id_1980))

saveRDS(tracts_sf_1980, "tracts_1980_5072.rds")

# 1970
tracts_sf_1970 <- st_read('/Users/RASV5G/Downloads/nhgis0018_shape/nhgis0018_shapefile_tl2000_us_tract_1970/US_tract_1970.shp')

tracts_sf_1970 <- st_transform(tracts_sf_1970, crs=5072) %>%
  dplyr::select(fips_tract_id_1970 = GISJOIN2,
                geometry) %>%
  mutate(fips_tract_id_1970 = as.character(fips_tract_id_1970))

saveRDS(tracts_sf_1970, "tracts_1970_5072.rds")



