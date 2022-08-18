n= input(sprintf('Please enter the number of points: '));
while n <= 0
    fprintf('\tINVALID INPUT\t\n');
     n = input(sprintf('Please enter a valid number of points: '));
end

x=ones(1,n); y=ones(1,n);
X=ones(1,n); Y=ones(1,n);

fprintf('please enter the values of x:\n')
for j = 1:n
    x(j) = input('');
    X(j) = log(x(j));
end
fprintf('please enter the values of y:\n')
for j = 1:n
    y(j) = input('');
    Y(j) = log(y(j));
end

figure; plot(x,y,'ro');

A=[n sum(X); sum(X) sum(X.^2)];
b=[sum(Y); sum(X.*Y)];
solution=A\b;
a0= solution(1)
a1= solution(2)
Ynew=a1*X + a0;

a=exp(a0) 
b=a1
ynew= a*(x.^b)
hold on
plot(x,ynew,'k');

Sr= sum((Y-Ynew).^2) %Squared differences between the data points and the straight line
St= sum((Y-mean(Y)).^2) %Squared differences between the data points and the mean
r2= (St-Sr)/St %Coefficient of Determination
r= (r2)^0.5 %correlation coefficient