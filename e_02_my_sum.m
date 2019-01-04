function y = e_02_my_sum (x) %#codegen
    % -- matlab default = double
    y = 0;
    for n = 1 : length(x)
        % first version
        % y = y + x(n);        
        % return y type to left side
        y(:) = y + x(n);
    end 
end 