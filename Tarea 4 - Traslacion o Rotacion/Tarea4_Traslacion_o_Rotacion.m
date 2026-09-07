close all
clear
clc
clf
DibujaEjes(3)

[ W, L, H] = LeerDim();
fprintf("[DEBUG] Ancho: %f | Largo: %f | Alto: %f \n", W, L, H);

PointMatrix = GetPointMatrix(L, W, H, 0, 0, 0);
DibujaCaja(PointMatrix, "blue");

fprintf("\n1. Traslacion\n");
fprintf("2. Rotacion\n");
Tipo = input("Elige el tipo de movimiento: ");
if Tipo == 1
    dx = input("Cuanto se mueve en X [m]: ");
    dy = input("Cuanto se mueve en Y [m]: ");
    dz = input("Cuanto se mueve en Z [m]: ");
elseif Tipo == 2
    rx = input("Angulo de rotacion en X [rad]: ");
    ry = input("Angulo de rotacion en Y [rad]: ");
    rz = input("Angulo de rotacion en Z [rad]: ");
end

for t = 0:0.01:1
    if Tipo == 1
        NewPoints = Traslacion(dx*t, dy*t, dz*t, PointMatrix);
    elseif Tipo == 2
        NewPoints = Rotacion(rx*t, ry*t, rz*t, PointMatrix);
    end

    clf
    DibujaEjes(3)
    DibujaCaja(NewPoints, "red");
    pause(0.1)
end

%________ TAREA _________ %

%   Parte 1
%   Modificar New Points para que caja 2(rotacion)
%   sea diferente color a caja 1(original) > modificar DibujarCaja()

%   Part 2
%   Agregar espacio para elegir tipo de mov.
%   (traslacion x, y o z, o rotacion en z) y generar animacion