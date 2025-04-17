# pySuperFaB: Python wrapper for SphericalFourierBesselDecompositions.jl

This is a simple Python wrapper for [`SphericalFourierBesselDecompositions.jl`](https://github.com/hsgg/SphericalFourierBesselDecompositions.jl).


## Installation

```
pip install .
```

The only dependency (from a Python perspective) is `juliacall`, which is
available in conda as `pyjuliacall`.


## Usage

You can use this as any other Python package. Under the hood it uses JuliaCall,
which on first import will automatically download Julia if you don't already
have it. It will also then download the
`SphericalFourierBesselDecompositions.jl` Julia package.

Use like so:
```
from pysuperfab import SFB

kmin = 0.05
rmin = 0.0
rmax = 2300.0
amodes = SFB.AnlmModes(kmin, rmin, rmax)
```
That should start looking *really* familiar from the
`SphericalFourierBesselDecompositions.jl` documentation.
