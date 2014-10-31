function [] = square_root_spiral(n)
    prev = [1,0,1];
    curr = [1,0,1];
    figure;
    hold on;
    for i = 1:n
        plot([prev(1)/prev(3) curr(1)/curr(3)], [prev(2)/prev(3) curr(2)/curr(3)], 'k-');
        plot([0 prev(1)/prev(3)], [0 prev(2)/prev(3)], 'r-');
        plot([0 curr(1)/curr(3)], [0 curr(2)/curr(3)], 'r-');
        prev = curr;
        curr = curr*rot(atan(1/sqrt(i)))*scale(sqrt((i+1)/i), sqrt((i+1)/i));
    end
    hold off;