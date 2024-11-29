function [r, i, e] = bisec(f, a0, b0, tol, imax)
    e = 1;                 % Inicializa el error
    r = [];                % Vector para guardar las raíces intermedias
    i = 1;                 % Contador de iteraciones

    while i <= imax && e > tol 
        r(i) = (a0 + b0) / 2;   % Calcula el punto medio
        if f(a0) * f(r(i)) < 0
            b0 = r(i);          % La raíz está en [a0, r(i)]
        else
            a0 = r(i);          % La raíz está en [r(i), b0]
        end 
        e = abs(b0 - a0);       % Actualiza el error
        i = i + 1;              % Incrementa el contador
    end
end
