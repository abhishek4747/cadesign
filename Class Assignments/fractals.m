function fractals(n)
    points = [0,0;
              cos(pi/3),sin(pi/3);
              1,0;
              0,0];
                
    for i = 1:n
       points = genPoints(points,i);
    end
    plotPoints(points);
end

function morePoints = genPoints(points,n)
    morePoints = zeros(length(points)*4 - 3,2);
    
    for i = 1:length(points)-1
       A = points(i,:);
       B = points(i+1,:);
       morePoints(4*i-3,:) =  A;
       morePoints(4*i+1,:) =  B;
       direction = atan2(B(2)-A(2),B(1)-A(1));
       
       morePoints(4*i-2,:) = (2*A + B)/3;
       morePoints(4*i-1,:) = morePoints(4*i-2,:) +...
           (3^-n)*[cos(direction+pi/3),sin(direction+pi/3)];
       morePoints(4*i,:) = (A + 2*B)/3;
    end
end

function plotPoints(points)
    figure;
    axis([min(points(:,1)) max(points(:,1)) min(points(:,2)) max(points(:,2))] )
    plot(points(:,1),points(:,2));
    axis equal;
end