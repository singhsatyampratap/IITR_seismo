clc, clear all, close all
%% EXAMPLE 1: Homogeneous probability density

% 2D box
N = 1000; % Number of sample points
x = rand(N,1);
y = rand(N,1);
figure
plot(x,y,'.')

%------------------------------------------------
% sphere
% x = r cos(theta) sin (phi)
% y = r sin(theta) sin (phi)
% z = r cos(phi)
% theta = [0 2pi) from x-axis on x-y plane
% phi = [0 pi] from +z axis to -z axis
%
% homogeneous distribution
N = 10000;
r = 5; % radius
theta = 2 * pi * rand(N,1); 
phi = pi * rand(N,1);           % INCORRECT  (Even though phi is homogeneous the samples generated are NOT)
%phi = acos(2 * rand(N,1) - 1);  % CORRECT

x = r .* cos(theta) .* sin(phi);
y = r .* sin(theta) .* sin(phi);
z = r .* cos(phi);

figure
subplot(2,2,1)
scatter3(x,y,z,'.');  % Check out x-y plane view
subplot(2,2,2)
scatter3(x,y,z,'.');  % Check out x-y plane view
subplot(2,2,3)
hist(theta)
subplot(2,2,4)
hist(phi)
xlim([0 4])
axis equal
%------------------------------------------------

