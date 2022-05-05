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



t = LinRange(0,120,1000)

Eₘ₁ = t

Eₘ₂ = 4(t .- 30)


plot(
    Coord.cartesian(xmin=0, ymin=0), 
    layer(x=t, y=Eₘ₁, Geom.line,color=["Mark I"]), 
    layer(x=t, y=Eₘ₂, Geom.line,color=["Mark II"]), 
    layer(yintercept=[40], Geom.hline(color=[colorant"hotpink"], style=[[8pt, 3pt]])),
    layer(xintercept=[40],Geom.vline(color=[colorant"hotpink"], style=[[8pt, 3pt]])),
    Guide.xlabel("time (in days)"), Guide.ylabel("Energy (in kJ)"), Guide.title("Solar panels")
)