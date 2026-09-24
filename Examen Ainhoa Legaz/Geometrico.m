function [Base, Art1, Art2, Art3] = Geometrico(l1, l2, l3, th1, th2, th3, th4)

% Base
Base = [0; 0; 0];

% Articulacion 1
x1 = l1*cos(th2)*cos(th1);
y1 = l1*cos(th2)*sin(th1);
z1 = l1*sin(th2);
Art1 = [x1; y1; z1];

% Articulacion 2
x2 = (l1*cos(th2) + l2*cos(th2+th3))*cos(th1);
y2 = (l1*cos(th2) + l2*cos(th2+th3))*sin(th1);
z2 = l1*sin(th2) + l2*sin(th2+th3);
Art2 = [x2; y2; z2];

% Articulacion 3
x3 = (l1*cos(th2) + l2*cos(th2+th3) + l3*cos(th2+th3+th4))*cos(th1);
y3 = (l1*cos(th2) + l2*cos(th2+th3) + l3*cos(th2+th3+th4))*sin(th1);
z3 = l1*sin(th2) + l2*sin(th2+th3) + l3*sin(th2+th3+th4);
Art3 = [x3; y3; z3];

end