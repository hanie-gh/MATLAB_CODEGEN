function e_02_my_sum_test ()
    n = 10;
    % single precision
    x = single(2*rand(n ,1)-1);
    y = e_02_my_sum(x); % return double
    y_expected = sum(double(x));
    err = y_expected - y;
    %% codegen
    %#codegen
    coder.screener("e_02_my_sum.m");    
    % -- code generation
    codegen e_02_my_sum -args {x} -config:lib -report
end 