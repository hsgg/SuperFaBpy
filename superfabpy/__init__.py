import juliacall

jl = juliacall.newmodule("superfabpy")

jl.seval("import SphericalFourierBesselDecompositions as SFB")

SFB = jl.SFB
