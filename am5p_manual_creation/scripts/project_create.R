source("global.R")

amGrassNS(
  mapset = "demo",
  location = "demo",
  {
    amProjectCreateFromDem(
      data.frame(
        datapath = "/tmp/data/dem/raster_dem_dem.img",
        name = "raster_dem_dem.img",
        size = 1
      ),
      "project_imported"
    )
  }
)
