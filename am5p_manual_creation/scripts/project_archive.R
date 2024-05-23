source("global.R")

amGrassNS(
  mapset = "project_imported",
  location = "project_imported",
  {
    # layer names must
    # - match AccessMod classes in /www/dictionary/classes.json
    # - use two underscore to separate tags from class, and
    #   one between tags e.g. vFacility__test_a

    execGRASS(
      "r.in.gdal",
      band = 1,
      input = "/tmp/data/landcover_merged/raster_land_cover_merged_demo.img",
      output = "rLandCoverMerged__test",
      title = "rLandCoverMerged__test",
      flags = c("overwrite", "quiet")
    )

    execGRASS("v.in.ogr",
      flags = c("overwrite", "w", "2"), # overwrite, lowercase, 2d only,
      input = "/tmp/data/facilities/vector_facility_demo.shp",
      key = "cat",
      output = "vFacility__test",
      snap = 0.0001
    )

    x <- amProjectExport("project_imported")
    file.copy(x, "/tmp/out/exported.am5p")
  }
)
