---
layout: default
title: Structure of a Lidar object
---

Read a `.las` or `.laz` file to build a `LAS`  object with the `readLAS` function.

	library(lidR)
	lidar = readLAS("myfile.las")

##  Basic structure

A `LAS` object contains a `data.table` in the slot `@data` with the data read from the `.las` or `.laz` file. The following names enable access to the data and correspond to the LAS specification version 1.4.

- `X` `Y` `Z` `Intensity` and `gpstime`
- `ReturnNumber`
- `NumberOfReturns`
- `ScanDirectionFlag`
- `EdgeofFlightline`
- `Classification`
- `ScanAngle`
- `UserData`
- `PointSourceID`
- `R` `G` and `B`

To save memory only useful data are loaded. `readLAS` can take optional paramters which allows selection of fields to be loaded. Removing useless fields for your purposes saves memory.  Default loads all the fields minus ̀`UserData`, `EdgeofFlighline` and `PointSourceID`.

## Dynamically computed fields

When a `LAS`  object is built, other information is automatically computed:

If the file contains a field `gpstime`

- `pulseID`: a number which identifies each pulse allowing the source beam for each point to be known
- `flightlineID`: a number which identifies the flightline allowing the flightline for each point to be known

If the file contains the fields `R` `G` and `B`

- `color`: a string containg the hexadecimal names of the RGB colors.

## Other data contained in a Lidar object

A `LAS`  object contains other information in the slots `@area`, `@pointDensity`, `@pulseDensity`:

	summary(lidar)

> Memory : 86 Mb 
>
> area : 350306.8 m^2
> points : 805322 points
> pulses : 561704 pulses
> point density : 2.3 points/m^2 
> pulse density : 1.6 pulses/m^2

- `area`: is computed with a convex hull. It is only an approximation if the shape of the data is not convex.
- `points` and `pulse density` are computed with the computed area. Therefore it suffers from the same approximation issue as `area`.

## Header

A `LAS` object also contains a slot `@header` containing the header of the las file. See [public documentation of las file format](http://www.asprs.org/wp-content/uploads/2010/12/LAS_1_4_r13.pdf) for more information.
