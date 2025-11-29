function dxdt = motor_dc(t, x)

    % Parámetros del motor
    Ra = 2;        % Ohm
    La = 0.023;    % H
    Ke = 0.01;     % V·s/rad
    Kt = 0.01;     % N·m/A
    J  = 0.001;    % kg·m^2
    B  = 0.0012;   % N·m·s/rad

    % Entradas
    Va = 32;    % Voltaje aplicado (puedes hacerlo variable si quieres)
    TL = 0;     % Par de carga (N·m)

    % Estados
    ia = x(1);   % Corriente de armadura
    w  = x(2);   % Velocidad angular

    % Dinámica
    dia_dt = -(Ra/La)*ia - (Ke/La)*w + (1/La)*Va;
    dw_dt  = (Kt/J)*ia - (B/J)*w - (1/J)*TL;

    dxdt = [dia_dt; dw_dt];
end
