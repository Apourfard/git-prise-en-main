using LinearAlgebra

n = 3
# Supposons que g = ∇f(x)
g = ones(n)
# Supposons que H = ∇²f(x)
H = [6.0 2.0 3.0;
     2.0 7.0 3.5
     3.0 3.5 8.0]

# Sur base de H et g, calculer la direction de Newton d

### votre code ici ; ne rien modifier d'autre
d = H \ -g

d = rand(n)
###

# vérification
using Test
@test norm(H * d + g) ≤ sqrt(eps()) * norm(g)
