n= input(sprintf('Please enter the number of points: '));
while n <= 0
    fprintf('\tINVALID INPUT\t\n');
     n = input(sprintf('Please enter a valid number of points: '));
end
x=ones(1,n);
y=ones(1,n);

fprintf('please enter the values of x:\n')
for j = 1:n
    x(j) = input('');
end
fprintf('please enter the values of y:\n')
for j = 1:n
    y(j) = input('');
end

figure; plot(x,y,'ro');
A=[n sum(x); sum(x) sum(x.^2)];
b=[sum(y); sum(x.*y)];
solution=A\b;
a0= solution(1)
a1= solution(2)
ynew=a1*x + a0
hold on
plot(x,ynew,'k');

Sr= sum((y-ynew).^2) %Squared differences between the data points and the straight line
St= sum((y-mean(y)).^2) %Squared differences between the data points the mean
r2= (St-Sr)/St %Coefficient of Determination
r= (r2)^0.5 %correlation coefficient



