fprintf("Solving Ordinary Differential Equations Numerically using Euler's method\n")
f = input('please enter the function: ');
x0 = input('please enter the intial value of the independent variable: ');
y0 = input('please enter the intial value of the dependent variable: ');
xn = input('please enter the point at which you want to evaluate solution: ');
h = input('please enter the step size: ');

n = (xn-x0)/h;
x(1) = x0; 
y(1) = y0;

fprintf('independent variable\t\tdependent variable\n');
fprintf('\t%f\t\t\t\t\t%f\n',x0,y0);

for j=1:n
    y(j+1)=y(j)+ h*f(x(j),y(j));
    x(j+1)=x(j)+h;
    fprintf('\t%f\t\t\t\t\t%f\n',x(j+1),y(j+1));
end


