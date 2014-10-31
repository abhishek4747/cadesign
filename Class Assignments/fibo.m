function [] = fibo(n)
    fib = [0 1 1];
    next = [0, 0, 0;
            1, 0, 1;
            0, 1, 1];
    center = [0,0,1];
    dirn = [1,0,1];
    xs = [center(1), center(1), center(1)-1, center(1)-1, center(1)];
    ys = [center(2), center(2)+1, center(2)+1, center(2), center(2)];
    th = linspace(pi/2, pi, 100);
    xc = cos(th);
    yc = sin(th);
    figure;
    hold on;
    for i = 1:n
        plot(xs,ys,'k-');
        plot(xc,yc,'b-');
                
        transform = trans(-xs(1), -ys(1));
        transform = transform * scale(fib(3)/fib(2), fib(3)/fib(2));
        transform = transform * rot(pi/2);
        transform = transform * trans(xs(1), ys(1));
        transform = transform * trans(dirn(1), dirn(2));
        
        m = ([xs' ys' ones(5,1)] * transform)';
        xs = m(:,1);
        ys = m(:,2);
        m = ([xc' yc' ones(100,1)] * transform)';
        xc = m(:,1);
        yc = m(:,2);
        
        temp = dirn*scale(fib(1), fib(1));
        center = center * trans(temp(1), temp(2));
        dirn = dirn * rot(pi/2);
        dirn = dirn * scale(fib(3)/fib(2), fib(3)/fib(2));
        
        fib = fib*next;
    end