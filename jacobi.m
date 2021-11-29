function [X] = jacobi(A,B,X0,Kmax);
X(:,1)=X0;
for K=1:Kmax,
        X(:,K+1)=B+A*X(:,K);   
end
   X= X(:,end)
end

