function T = rot3(theta, phi, psi)
    Ttheta = [1 0 0 0;
        0 cos(theta) -sin(theta) 0;
        0 sin(theta) cos(theta), 0;
        0 0 0 1];
    Tphi = [cos(phi) 0 sin(phi) 0;
        0 1 0 0;
        -sin(phi) 0 cos(phi) 0;
        0 0 0 1];
    Tpsi = [cos(psi), sin(psi), 0, 0;
        -sin(psi), cos(psi), 0, 0;
        0, 0, 1, 0;
        0, 0, 0, 1];
    T = Tpsi*Tphi*Ttheta;