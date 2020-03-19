function fourierSeries(f, T, n)
% plots the fourier series of f(x) in the period T, where n is the number
% of coefficients

syms x;

L = T/2;

a0 = (1/T)*int(f, -L, L);

% just to make MATLAB stop complaining that f_sin and f_cos are inefficient
f_sin = 0*x;
f_cos = 0*x;

y(x) = a0;

for i = 1:n
    
    f_sin(x) = sin(i * x * pi/L);
    f_cos(x) = cos(i * x * pi/L);
    
    an = (1/L) * int( ( f * f_cos ), -L, L);
    bn = (1/L) * int( ( f * f_sin ), -L, L);
    
    y(x) = y(x) + an * f_cos(x) + bn * f_sin(x);
    
end

figure('Name','Fourier Series');

hold on;

% plot both functions on a graph for comparison
fplot(y,[-L,L]);
fplot(f,[-L,L]);

hold off;

    