function [root] =  bisection (f, a, b, acc)
% Returns the root of a function using the bisection method

if (f(a)<=0 && f(b)>=0) || (f(a)>=0 && f(b)<=0)
    root = (a+b)/2;
    
    while (abs(a-b)>abs(acc))
        
        if (f(a)<0 && f(root)<0) || (f(a)>0 && f(root)>0)
            a = root;
            
        else
            b = root;
           
        end
   
    root = (a+b)/2;
    
    end
else
    
    error("Invalid inputs");

end
