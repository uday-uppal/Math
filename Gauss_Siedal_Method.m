%A=[1 1 0 3; 2 1 -1 1; 3 -1 -1 2; -1 2 3 -1];
A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
B=[16; 9; 10; 11];
Xin=[0;0;0;0];
X=[0;0;0;0];
N=4;
n=20;
tol=0.000001;
for k=1:n
    for i=1:N
        
        sum1=0;
        sum2=0;
        for j=1:i-1
            sum1=sum1+A(i,j)*X(j);     
        end
        for j=i+1:N
            sum2=sum2+A(i,j)*Xin(j);
        end
    X(i,:)=(B(i,:)-sum1-sum2)/A(i,i);    
    end
    if(norm(X-Xin)<=tol)
        disp(X)
        break
    else
        Xin=X;
    end    
        
        
end
 X