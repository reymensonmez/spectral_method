N = 512; % Number of grid points.
h = 2*pi/N; % Size of each grid.
x = h*(1:N); % Variable x as an array.
t = 0.05*pi; % Time to plot solution at
dt = 0.001; % Appropriate time step.
u0 = zeros(1,N); % Array to hold initial data
u0(N/2+1:N) = ones(1,N/2); % Defining the initial data

k = 1i*[0:N/2-1 0 -N/2+1:-1];
disp(k)% Corrected Fourier wavenumbers
k3 = k.^3;
u = ifft(exp(k3*t) .* fft(u0)); % Calculate the solution
plot(x,u,'r-'); % Plot the solution
xlabel('x'); % Add labels as strings
ylabel('u');
title(['Time ', num2str(t/(2*pi)), ' \pi']);

