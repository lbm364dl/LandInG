grid <- terra::rast("~/LPJmL/inputs/cru_ts4.09.1901.2024.cld.dat.nc")

grid <- terra::rast("~/LPJmL/inputs/cru_ts_3_10.1901.2009.cld.dat.nc")
terra::units(grid) <- "%"
terra::writeCDF(grid, "cld.nc")

grid_fixed <- terra::rast("cld.nc")

nc <- ncdf4::nc_open("~/LPJmL/inputs/cru_ts_3_10.1901.2009.cld.dat.nc")
