function bezierSurface(N)
    U = linspace(0,1,N)';
    W = linspace(0,1,N)';
    
    %CP = getCP(U,W);
    PolygonNet = [6,4,6,4;
                  2,4,5,6;
                  1,3,4,4;
                  0,1,2,6];
    Q = zeros(N,N);
    
    for i = 1:N
       for j = 1:N
           u = U(i,1);
           w = W(j,1);
           Q(i,j) = getQuw(u,w,PolygonNet);
       end
    end
    surf(U,W,Q);
end

function value  = getBasis(N, v)
    value = zeros(N,1);
    
    for i = 1:N
        frac = factorial(N-1)/(factorial(i-1)*factorial(N-i));
        value(i,1) = frac*(v^(i-1))*((1-v)^(N-i));
    end
end

function Quw = getQuw(u,w,PN)
    [N,M] = size(PN);
    J = getBasis(N,u);
    J = J*ones(1,N);
    
    K = getBasis(M,w);
    K = (K*ones(1,M))';
    
    Quw = sum(sum(PN.*J.*K));
    
    %Quw = 0;
    %for i = 0:n
    %   for j = 0:m
    %       Quw = Quw + getCP(i,j,U,W)*getBasis(n,i,u)*getBasis(m,j,w);
    %   end
    %end
end
