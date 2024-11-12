function [xn, k] = GausSeidel(A,b,tol,x0)

n = length(A);
xn = [];
error = 1;
k = 0;


while error > tol && k < 1000

    xn(1,1) = (1/A(1,1))*(b(1)-A(1,2:n)*x0(2:n));
    
    for i = 2:n
       
        sum1 = A(i,1:i-1)*xn(1:i-1,1);
        sum2 = A(i,i+1:n)*x0(i+1:n,1);
        xn(i,1) = (1/A(i,i))*(b(i)-sum1-sum2);

    end

    error = max(abs(xn-x0))/max(abs(xn))
    x0 = xn;
    k = k + 1;

end
