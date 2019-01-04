function e_01_my_sum_test ()
    n = 10;
    x = 2*rand(n ,1)-1;
    % have 10 random number betweem -1 and +1
    y = e_01_my_sum(x);
    y_expected = sum(double(x));
    err = y_expected - y;
    %% codegen run in the matlab 
    %#codegen
    coder.screener("e_01_my_sum.m");    
    % code generation
    codegen e_01_my_sum -args {x} -config:lib -report
end  