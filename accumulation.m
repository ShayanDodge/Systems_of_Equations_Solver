
function [x] =accumulation(a,b,kmax)
for k=1:kmax+1
   x(:,k)=(a^(k-1))*b ;
end
x=sum(x,2)
end

