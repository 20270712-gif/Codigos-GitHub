close all
clear
clc
clf

l1 = input("Longitud del eslabon 1 [m]: ");
l2 = input("Longitud del eslabon 2 [m]: ");
l3 = input("Longitud del eslabon 3 [m]: ");

L = (l1 + l2 + l3) * 1.2;

theta1 = input("Angulo de la articulacion 1 [rad]: ");
theta2 = input("Angulo de la articulacion 2 [rad]: ");
theta3 = input("Angulo de la articulacion 3 [rad]: ");

for t = 0:0.01:1
    th1 = theta1*t;
    th2 = theta2*t;
    th3 = theta3*t;
 
    V1 = Rotacion(0, 0, th1,            [l1; 0; 0; 1]);
    V2 = Rotacion(0, 0, th1+th2,        [l2; 0; 0; 1]);
    V3 = Rotacion(0, 0, th1+th2+th3,    [l3; 0; 0; 1]);
 
    % Posicion de cada articulacion: la anterior + el vector rotado
    P0 = [0; 0; 0];
    P1 = P0 + V1(1:3);
    P2 = P1 + V2(1:3);
    P3 = P2 + V3(1:3);
 
    clf
    DibujaEjes(L)
    view(2)
    xlim([-L L])
    ylim([-L L])
    hold on
 
    % Eslabones
    LineaPuntos(P0, P1, 'black')
    LineaPuntos(P1, P2, 'black')
    LineaPuntos(P2, P3, 'black')

    % Articulaciones
    scatter3(P0(1), P0(2), P0(3), 80, 'filled', 'MarkerFaceColor','b')
    scatter3(P1(1), P1(2), P1(3), 80, 'filled', 'MarkerFaceColor','b')
    scatter3(P2(1), P2(2), P2(3), 80, 'filled', 'MarkerFaceColor','b')
 
    pause(0.05)
end