function y = e_01_my_sum (x) %#codegen
    y = 0;
    % a = {1, 2, 3};
    % code generation tech at this time doesnt support cell array
    for n = 1 : length(x)
        y = y + x(n);
    end 
end