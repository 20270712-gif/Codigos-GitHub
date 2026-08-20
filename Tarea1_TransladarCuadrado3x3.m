clear
clc
close all
%% TRANSLADAR UN CUADRADO 3X3 
punto1 = [2,2,0,1]';    % Punto inicial [X, Y, Z, Escala]
dy = 4;                 % Desplazamiento total en Y

for i = 0:0.1:dy
    
    clf                 % Para borrar los cuadrados que se van creando
    line([0 10],[0 0],[0 0],'color','red','linewidth', 2)
    line([0 0],[0 10],[0 0],'color','green','linewidth', 2)
    hold on

    punto2 = Traslacion(0,i,0,punto1);  % Trasladar punto en el eje Y

    % Dibujar el lado inferior del cuadrado
    line([punto2(1) punto2(1)+3], ...
         [punto2(2) punto2(2)], ...
         'color','black','linewidth',2)

    % Dibujar el lado derecho del cuadrado
    line([punto2(1)+3 punto2(1)+3], ...
         [punto2(2) punto2(2)+3], ...
         'color','black','linewidth',2)

    % Dibujar el lado superior del cuadrado
    line([punto2(1)+3 punto2(1)], ...
         [punto2(2)+3 punto2(2)+3], ...
         'color','black','linewidth',2)

    % Dibujar el lado izquierdo del cuadrado
    line([punto2(1) punto2(1)], ...
         [punto2(2)+3 punto2(2)], ...
         'color','black','linewidth',2)

    pause(0.1)
end