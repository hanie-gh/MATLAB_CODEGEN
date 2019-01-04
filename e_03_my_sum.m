function y = e_03_my_sum (x, t) %#codegen
    % -- matlab default = double
    y = cast(0, 'like', t.y);
    for n = 1 : length(x)
        % -- return y type to left side
        y(:) = y + x(n);
    end 
end