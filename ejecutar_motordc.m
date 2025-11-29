% Condiciones iniciales: [i_a(0), w(0)]
x0 = [0; 0];   % corriente inicial = 0 A, velocidad inicial = 0 rad/s

% Intervalo de simulación
tspan = [0 10]; % segundos

% Resolver la ODE con el modelo del motor
[t, x] = ode45(@motor_dc, tspan, x0);

% Extraer resultados
ia = x(:,1);    % corriente
w  = x(:,2);    % velocidad angular

% Graficar resultados
figure;

subplot(2,1,1);
plot(t, ia, 'r', 'LineWidth', 1.5); grid on;
xlabel('Tiempo (s)');
ylabel('Corriente i_a (A)');

subplot(2,1,2);
plot(t, w, 'b', 'LineWidth', 1.5); grid on;
xlabel('Tiempo (s)');
ylabel('Velocidad \omega (rad/s)');
