Calculating the beam waist of a Guassian laser beam as a function of propagation distance
========================================================
author: Matt Moocarme
date: 23rd August 2015

2 Outline
========================================================
The geometry and behaviour of a Guassian laser beam can be governed by a set of beam parameters

The Function
========================================================


```r
beamWidth <- function(w0, wavelength, z) w0*sqrt(1+(z*(wavelength/1e6)/(pi*w0^2))^2)
```

Examples of Use
========================================================


```r
w0 = 0.1
wavelength = 532
z = 10
beamWidth(w0, wavelength, z)
```

```
[1] 0.1014237
```

References
========================================================

Equation for source *Anupam Garg, Classical Electrodynamics in a Nutshell*

