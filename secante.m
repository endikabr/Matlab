function [r, i, e] = secante(f, x0, x1, tol, imax)
    % Input:
    % f     - función
    % x0    - primer valor inicial
    % x1    - segundo valor inicial
    % tol   - tolerancia
    % imax  - máximo número de iteraciones
    
    % Output:
    % r     - aproximaciones sucesivas
    % i     - número de iteraciones realizadas
    % e     - error en la última iteración

    r = [x0; x1];         % Vector con los dos valores iniciales
    e = 1;                % Inicializa el error
    i = 2;                % Comienza en la segunda iteración

    while i <= imax && e > tol
        % Fórmula de la secante
        x_next = r(i) - f(r(i)) * (r(i) - r(i-1)) / (f(r(i)) - f(r(i-1)));
        e = abs(x_next - r(i));             % Calcula el error
        r = [r; x_next];                    % Guarda la aproximación
        i = i + 1;                          % Incrementa el contador
    end
end
