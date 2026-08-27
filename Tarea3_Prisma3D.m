close all
clear
clf

%%
clear
clc
close all
punto1 = [2,2,0,1]';    % Punto inicial [X, Y, Z, Escala]

line([0 10],[0 0],[0 0],'color','red','linewidth', 2)
line([0 0],[0 10],[0 0],'color','green','linewidth', 2)
line([0 0],[0 0],[0 10],'color','blue','linewidth', 2)
axis equal
hold on

view(3)   % vista 3D 

punto2 = [2,2,0,1];

%% ABAJO
% Dibujar el lado inferior del cuadrado
line([punto2(1) punto2(1)+3], [punto2(2) punto2(2)], [0 0], ...
         'color','black','linewidth',2)

% Dibujar el lado derecho del cuadrado
line([punto2(1)+3 punto2(1)+3], [punto2(2) punto2(2)+3], [0 0], ...
         'color','black','linewidth',2)

% Dibujar el lado superior del cuadrado
line([punto2(1)+3 punto2(1)], [punto2(2)+3 punto2(2)+3], [0 0], ...
         'color','black','linewidth',2)

% Dibujar el lado izquierdo del cuadrado
line([punto2(1) punto2(1)], [punto2(2)+3 punto2(2)], [0 0],...
         'color','black','linewidth',2)
%% ARRIBA
% Dibujar el lado inferior de la tapa
line([punto2(1) punto2(1)+3], [punto2(2) punto2(2)], [3 3], ...
         'color','black','linewidth',2)

% Dibujar el lado derecho de la tapa
line([punto2(1)+3 punto2(1)+3], [punto2(2) punto2(2)+3], [3 3], ...
         'color','black','linewidth',2)

% Dibujar el lado superior del de la tapa
line([punto2(1)+3 punto2(1)], [punto2(2)+3 punto2(2)+3], [3 3], ...
         'color','black','linewidth',2)

% Dibujar el lado izquierdo de la tapa
line([punto2(1) punto2(1)], [punto2(2)+3 punto2(2)], [3 3],...
         'color','black','linewidth',2)

%% VERTICES
line([punto2(1) punto2(1)], [punto2(2) punto2(2)], [0 3], 'color','black','linewidth',2)
line([punto2(1)+3 punto2(1)+3], [punto2(2) punto2(2)], [0 3], 'color','black','linewidth',2)
line([punto2(1)+3 punto2(1)+3], [punto2(2)+3 punto2(2)+3], [0 3], 'color','black','linewidth',2)
line([punto2(1) punto2(1)], [punto2(2)+3 punto2(2)+3], [0 3], 'color','black','linewidth',2)