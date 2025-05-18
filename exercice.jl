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
#### selon la méthode de Newton:
d = -inv(H) * g
#### Résolution du système linéaire H*d=-g avec l'opérateur \ (division matricielle).
#### Comparative à Ax=b, g est une matrice de colonne, H est un matrice n*n et x est un vecteur  en form de matrice (x1,x2) ou bien(x,y)
d = H \ -g
##### ceci est la version 2 de mon devoir

d = rand(n)
###

# vérification
using Test
@test norm(H * d + g) ≤ sqrt(eps()) * norm(g)
