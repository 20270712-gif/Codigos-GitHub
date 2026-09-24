function DibujaEjes(app, AxisLenght)

Delta = [-AxisLenght AxisLenght];

line(app, Delta,[0 0],[0 0],LineWidth=2,Color='r');
line(app, [0 0],Delta,[0 0],LineWidth=2,Color='g');
line(app, [0 0],[0 0],Delta,LineWidth=2,Color='b');

hold(app, 'on')
grid(app, 'on')
view(app, 45,30) %Establece vista isometrica de la grafica con grados Azimuth

axis (app, 'equal') %Fija la proporcion del tamaño de los ejes
end