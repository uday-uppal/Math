format long
f=@(x)x^2-17
x0=4;
x1=5;

tol=0.00000001;
N=20;
while i<=N
    x2=x1-(f(x1)*((x1-x0)/(f(x1)-f(x0))));
    if(abs(x2-x1)<tol)
        z=80;
        break
    end
    
    x0=x1;
    x1=x2;
    i=i+1;
end
disp(x2)
disp(x1)
