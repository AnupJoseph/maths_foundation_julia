# Imports
using Gadfly
using LinearAlgebra

# Simulating Time
t = LinRange(0, 40, 1000)

dᵣ = 2.5t

dₛ = 3(t .- 5)

plot(
    Coord.cartesian(xmin=0, ymin=0), 
    layer(x=t, y=dᵣ, Geom.line,color=["Robber"]), 
    layer(x=t, y=dₛ, Geom.line,color=["Sherrif"]), 
    layer(yintercept=[75], Geom.hline(color=[colorant"hotpink"], style=[[8pt, 3pt]])),
    layer(xintercept=[30],Geom.vline(color=[colorant"hotpink"], style=[[8pt, 3pt]])),
    Guide.xlabel("time (in minutes)"), Guide.ylabel("distance (in mm)"), Guide.title("A Bank Robber Caught")
)