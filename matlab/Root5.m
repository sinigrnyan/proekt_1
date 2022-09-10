syms x

Eq = cos(x) - exp(0.001+x^2)
a = solve(Eq)

y = fzero('cos(x) - exp(0.001+x^2)',0)

a=pi/2; b=3*pi;
m=100; x=linspace(a,b,m);
f='cos(x) - exp(0.001+x.^2)';
plot(x,eval(f),x,0*x,':'); 
grid on 
xlabel('x');