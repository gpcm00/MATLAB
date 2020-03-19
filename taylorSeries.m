function y = taylorSeries (f, a, n)
% plots the taylor series of f(x) at a, where n is the number of coefficients
% returns the taylor series

syms x;

y(x) = f(a);

dydt(x) = diff(f, x);

for i = 1:n
     
    y(x) = y(x) + ( dydt(a)/factorial(i) ) * (x - a)^i;
    
    dydt(x) = diff(dydt, x);
end

figure('Name','Taylor Series');

hold on

fplot(y);
fplot(f);

legend('Taylor Series','Original');

hold off;



