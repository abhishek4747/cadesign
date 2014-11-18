function [] = bezier(p)
    n = size(p,1)-1;
    curve = zeros(101,2);
    for t=0:0.01:1
        for i=0:n
            curve(uint8(1+t*100),:) = curve(uint8(1+t*100),:) + p(i+1,:)*nchoosek(n,i)*(1-t)^(n-i)*t^i;
        end
    end
    plot(curve(:,1),curve(:,2));
    hold on;
    plot(p(:,1),p(:,2),'r-o');
    hold off;