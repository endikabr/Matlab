function [r, i, e] = newton_raphson(f, df, x0, tol, imax)
    % Input:
    % f     - función
    % df    - derivada de la función
    % x0    - valor inicial
    % tol   - tolerancia
    % imax  - máximo número de iteraciones
    
    % Output:
    % r     - aproximaciones sucesivas
    % i     - número de iteraciones realizadas
    % e     - error en la última iteración

    r = [];               % Vector para guardar las aproximaciones
    e = 1;                % Inicializa el error
    i = 1;                % Contador de iteraciones
    r(i) = x0;            % Primer valor inicial

    while i <= imax && e > tol
        x_next = r(i) - f(r(i)) / df(r(i));  % Fórmula de Newton-Raphson
        e = abs(x_next - r(i));             % Calcula el error
        r = [r; x_next];                    % Guarda la aproximación
        i = i + 1;                          % Incrementa el contador
    end
end
