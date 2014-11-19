function quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue)
   
    %isovalue = 0;
    %A = 1;
    %B = 2; C = 0.5;
    %D = 0.4; E = 0.5; F = 0.6;
    %G = 7; H = 8; I = 9;
    %J = -100;

   xRange = 60; yRange = 60; zRange = 60;
   numPoints = 50;
   [X,Y,Z] = init(xRange,yRange,zRange,numPoints);
   S = A*X.*X + B*Y.*Y + C*Z.*Z...
       + 2*D*X.*Y + 2*E*X.*Z + 2*F*Y.*Z...
       + 2*G*X + 2*H*Y + 2*I*Z...
       + J;
   %figure;
   isosurface(X,Y,Z,S,isovalue);
end

function [X,Y,Z] = init(xRange,yRange,zRange,numPoints)
    X = linspace(-xRange/2,xRange/2,numPoints);
    Y = linspace(-yRange/2,yRange/2,numPoints);
    Z = linspace(-zRange/2,zRange/2,numPoints);
    [X,Y,Z] = meshgrid(X,Y,Z);
end

function [eth, pbh] = gui
    eth = uicontrol('Style','edit',...
                'String','Enter your name here.',...
                'Position',[30 50 130 20]);
            
    pbh = uicontrol('Style','pushbutton','String','Button 1',...
                'Position',[50 20 60 40]);
end
