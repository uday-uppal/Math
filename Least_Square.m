clc;
clear ;
syms a b x y
g=@(a,b,x,y) (a+b*x-y).^2;
g1=@(a,b,x)(a+b*x);
h=diff(g,a)       
i=diff(g,b)
x1=[-2 -1 0 1 2];
y1=[15 1 1 3 19];
z=subs(h, {x, y}, {x1, y1}) 
k=sum(z)
z1=subs(i, {x, y}, {x1, y1})
k1=sum(z1)
equations=[k==0,         
    k1==0]
[A,c] = equationsToMatrix(equations)  
X=inv(A)*c
a1=X(1)
b1=X(2)
f=g1(a1,b1,x1)
plot(x1,y1,'r-*',x1,f,'b-^')


%OR

% R=[diff(g,a); diff(g,b)]
% z=subs(R,{x, y}, {x1, y1})
% k=sum(Z,2)
% equations=[k==0]
% [A,c]=equationsToMatrix(equations)
% X=inv(A)*c
% a1=X(1)
% b1=X(2)
% f=g1(a1,b1,x1)
% plot(x1,y1,'r-*',x1,f,'b-^')