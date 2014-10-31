function [] = ellipse(a,b,xc,yc)
    x = linspace(-a,a,ceil(200*a));
    y1 = zeros(ceil(200*a),1);
    y2 = zeros(ceil(200*a),1);
    for i=1:length(x)
        y1(i) = b*sqrt(1-((x(i)*x(i))/(a*a)));
        y2(i) = -b*sqrt(1-((x(i)*x(i))/(a*a)));
    end
    figure;
    plot(x+xc,y1+yc);
    hold on;
    plot(x+xc,y2+yc);
    hold off;