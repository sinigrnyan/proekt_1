syms x

Eq = x^2 + 1
a = solve(Eq)

y = fzero('x^2 + 1',0)
%fzero неопределяет комплексных корней