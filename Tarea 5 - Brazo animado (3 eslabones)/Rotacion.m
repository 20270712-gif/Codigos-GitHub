.function vector4d = Rotacion(rx, ry, rz, vectorIn)

Mx = [1     0         0       0;
      0  cos(rx) -sin(rx)     0;
      0  sin(rx)  cos(rx)     0;
      0     0          0      1];

My = [cos(ry)  0 -sin(ry)     0;
      0        1      0       0;
      -sin(ry) 0  cos(ry)     0;
      0        0      0       1];

Mz = [cos(rz) -sin(rz)   0    0;
      sin(rz)  cos(rz)   0    0;
      0           0      1    0;
      0           0      0    1];

MatRot = Mz * My * Mx;
vector4d = MatRot * vectorIn;
end