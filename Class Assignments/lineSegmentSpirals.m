function lineSegmentSpirals(n)
    points = [0,0;
              0,1;
             -1,1];
         
   for i = 2:n
    points = genPoints(points,i);
   end  
   plotPoints(points);
end

function morePoints = genPoints(points,n)
    last = points(length(points),:);
    secLast = points(length(points)-1,:);
   
    if (mod(n,2) == 0)
        yLine = [last(1),last(2)-n];
        xLine = [last(1)+n,last(2)-n];
    else
        yLine = [last(1),last(2)+n];
        xLine = [last(1)-n,last(2)+n];
    end
    morePoints = [points;yLine;xLine];
end

function plotPoints(points)
    figure;
    axis equal;
    plot(points(:,1),points(:,2));
end