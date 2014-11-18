%% cylinderical_helix: function description
function [] = cylindrical_helix(radius, height, rotations)
	t = 0:pi/50:2*rotations*pi;
	x = radius*sin(t);
	y = radius*cos(t);
	z = ((t/pi)/(rotations/2))*height;

	figure
	plot3(x,y,z);
