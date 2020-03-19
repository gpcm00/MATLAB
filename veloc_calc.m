function [xFinal, yFinal] = veloc_calc(x,y,n,a,b)
% uses the mid point rule to estimate the integral of two vectors
% functions x(t) and y(t) are the velocity vector
% this function will return a plot of the xy postion, and its final value

change = (b-a)/n;

% index that keeps track of the amount of iterations
count = 1;

%% First Iteration


% the first iteration is done outiside the for loop because the it is
% easier to work like this, otherwise we would need to catch when count was
% 0


midPoint = a + (count - .5) * change;

%array of points that will be used for graphing the xy position
arrayX(count) = x(midPoint) * change;
arrayY(count) = y(midPoint) * change;

count = count + 1;




%% 
% i ends at (b - change) because when dividing the amount of rectangles
% needed, we would get an extra rectangle that starts at b
for i = (a + change) : change : (b - change)
    midPoint = a + (count - 0.5) * change;
    
    arrayX(count) = arrayX(count - 1) + x(midPoint) * change;
    arrayY(count) = arrayY(count - 1) + y(midPoint) * change;
    
    count = count + 1;
end

%%

xFinal = arrayX(count-1);
yFinal = arrayY(count-1);

plot(arrayX, arrayY);

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

