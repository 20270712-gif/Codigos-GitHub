function [Base, Art1, Art2, Art3] = Homogenea(l1, l2, l3, th1, th2, th3, th4)

[Rz1, ~] = Rotacion(0, 0, th1-pi/2, [0;0;0;1]);

[Ry90, ~] = Rotacion(0, pi/2, 0, [0;0;0;1]);
[Rz90, ~] = Rotacion(0, 0, pi/2, [0;0;0;1]);

[Rz2, ~] = Rotacion(0, 0, th2, [0;0;0;1]);
[Tx1, ~] = Traslacion(l1, 0, 0, [0;0;0;1]);

[Rz3, ~] = Rotacion(0, 0, th3, [0;0;0;1]);
[Tx2, ~] = Traslacion(l2, 0, 0, [0;0;0;1]);

[Rz4, ~] = Rotacion(0, 0, th4, [0;0;0;1]);
[Tx3, ~] = Traslacion(l3, 0, 0, [0;0;0;1]);

% T = Rz(θ1)*Ry(90°)*Rz(90°)*Rz(θ2)*Tx(l1)*Rz(θ3)*Tx(l2)*Rz(θ4)*Tx(l3)
GB = Rz1 * Ry90 * Rz90;
A1 = Rz2 * Tx1;
A2 = Rz3 * Tx2;
A3 = Rz4 * Tx3;

A1A2 = A1 * A2;
A1A2A3 = A1A2 * A3;

%Base
Base = [0;0;0];

% Articulación 1
T1 = GB * A1;
Art1 = T1(1:3,4);

% Articulación 2
T2 = GB * A1A2;
Art2 = T2(1:3,4);

% Articulación 3
T3 = GB * A1A2A3;
Art3 = T3(1:3,4);

end