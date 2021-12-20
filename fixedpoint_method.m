format long
f=@(x)x^2-17
x1=5;
tol=0.00000001;
N=20;
while i<=N
    x2=f(x1);
    if(abs(x2-x1)<tol)
        disp(x2)
        break
    end
    x1=x2;
    i=i+1;
end
%disp(x2)
