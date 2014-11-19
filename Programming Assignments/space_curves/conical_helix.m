%% conical_helix: function description
function [] = conical_helix(radius, height, rotations)
	t = 0:pi/50:2*rotations*pi; % t goes 0 to something pi
	uni = ((t/pi)/(rotations/2)); % uni goes 0 to one
	z = uni*height;
	x = uni.*(radius*sin(t));
	y = uni.*(radius*cos(t));

	%figure
	plot3(x,y,z);
