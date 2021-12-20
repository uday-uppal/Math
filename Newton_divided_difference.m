clc
clear all
x=[1;1.5;2;2.5]
y=[2.7183;4.4817;7.3891;12.1825]
n=4
p=2.25
for i=1:n
    d(i,1)=y(i)
end
for j=2:n
    for i=j:n
        d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1))
    end
end
prod=1
sum=d(1,1)
for i=1:n-1
    prod=(p-x(i))*prod
    sum=(prod*d(i+1,i+1))+sum
end
sum