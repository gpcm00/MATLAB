function [root] = newtonMethod (f, p, tol)
% Returns the root of a function using Newton's Method

syms x;

y(x) = f(x); % this fix input functions that are not derived with respect to x (ex.: v(t))


% Take the derivative of f(x)
yp(x) = diff(y);

% Define the original guess
p1 = p;

p2 = p1 - double(y(p1))/double(yp(p1));

% Calculate distance
dist = abs(p1 - p2);

% Continue the steps above by setting p2 as the new guess
while(abs(dist) > abs(tol))

    p1 = p2;
    
    p2 = p1 - double(y(p1))/double(yp(p1));
    
    dist = abs(p1 - p2);
    
end

root = p2;
