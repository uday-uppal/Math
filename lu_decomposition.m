%A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
%B=[16; 9; 10; 11];
A=[1 2 3; 2 4 3; 3 0 2];
B=[1;2;3];
n=3
x=zeros(n,1);
M=eye(4);
for j=1:(n-1)
     if A(j,j)==0
         for r=j+1:n
                if A(r,j)~=0
                    t=A(r,:);
                    A(r,:)=A(j,:);
                    A(j,:)=t;
                end
         end
     end
    for i=j+1:n
        M(i,j)=A(i,j)/A(j,j); 
        A(i,:)=A(i,:)-M(i,j)*A(j,:);
        B(i,:)=B(i,:)-M(i,j)*B(j,:);
    end
end
disp(A)
 a=[A B];
 for i=n:-1:1
 x(i,1)=(a(i,n+1)-A(i,:)*x)/a(i,i);
 end
disp(x)
%-A(i,:)x(1:n))