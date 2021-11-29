disp('Gauss Seidel Iteration');
a=input('A=')
b=input('B=') 
kmax=input('Kmax=')
xold=input('x0=');
[n,m]=size(b);
xnew=zeros(n,1);
for k=1:kmax
    for i=1:n
        s=0;
        for j=1:i-1
            s=s+a(i,j)*xnew(j);
        end
        for j=i+1:n
            s=s+a(i,j)*xold(j);
        end
        xnew(i)=(b(i)+s);
    end
    xold=xnew;
end
disp(xnew');
