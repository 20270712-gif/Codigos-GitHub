close all
clear
clf

%%
thetafin1 = pi/4;
l1 = 1;
l2 = 0.6;
thetafin2 = -pi/8;

for theta1 = 0:0.1:thetafin1
clf
% DIBUJANDO EJES PRINCIPALES
line([0 2], [0 0], [0 0], 'Color', 'red', 'LineWidth', 3);
line([0 0], [0 2], [0 0], 'Color', 'green', 'LineWidth', 3);
axis equal
hold on

% DIBUJANDO ARTICULACIONES
% Primera articulación
joint_1 = [0 0]';
scatter(joint_1(1), joint_1(2), 100, 'filled', "blue", 'MarkerEdgeColor', 'black')
l1x = l1*cos(theta1);
l1y = l1*sin(theta1);

% Segunda articulación
joint_2 = [l1x l1y]';
scatter(joint_2(1), joint_2(2), 100, 'filled', "red", 'MarkerEdgeColor', 'black')

l2x = l2*cos(theta1);
l2y = l2*sin(theta1);

EFx = l1x + l2x;
EFy = l1y + l2y;
EF = [EFx EFy]';

%Punto final
scatter(EF(1), EF(2), 100, 'filled', "m", 'MarkerEdgeColor', 'black')

% DIBUJANDO ESLABONES
line([joint_1(1) joint_2(1)], [joint_1(2) joint_2(2)], [0 0], 'Color', 'black', 'LineWidth', 2)
line([joint_2(1) EF(1)], [joint_2(2) EF(2)], [0 0],'Color', 'black', 'LineWidth', 2)

    pause(0.1)
end

for theta2 = 0:-0.1:thetafin2
clf

%% DIBUJANDO EJES PRINCIPALES
line([0 2], [0 0], [0 0], 'Color', 'red', 'LineWidth', 3);
line([0 0], [0 2], [0 0], 'Color', 'green', 'LineWidth', 3);
axis equal
hold on

%% DIBUJANDO ARTICULACIONES
% Primera articulación
joint_1 = [0 0]';
scatter(joint_1(1), joint_1(2), 100, 'filled', "blue", 'MarkerEdgeColor', 'black')
l1x = l1*cos(theta1);
l1y = l1*sin(theta1);

% Segunda articulación
joint_2 = [l1x l1y]';
scatter(joint_2(1), joint_2(2), 100, 'filled',"red", 'MarkerEdgeColor', 'black')
l2x = l2*cos(theta1 + theta2);
l2y = l2*sin(theta1 + theta2);

EFx = l1x + l2x;
EFy = l1y + l2y;
EF = [EFx EFy]';

%Punto final
scatter(EF(1), EF(2), 100, 'filled', "m", 'MarkerEdgeColor', 'black')

%% DIBUJANDO ESLABONES
line([joint_1(1) joint_2(1)], [joint_1(2) joint_2(2)], [0 0], 'Color', 'black', 'LineWidth', 2)
line([joint_2(1) EF(1)], [joint_2(2) EF(2)], [0 0],'Color', 'black', 'LineWidth', 2)
    pause(0.1)
    
end