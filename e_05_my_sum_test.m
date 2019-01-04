function e_05_my_sum_test ()
    n = 10;
%     t = e_05_my_sum_type ('double');
    t = e_05_my_sum_type ('fixed');
    %%
    buildInstrumentedMex e_05_my_sum ...
        -args {zeros(n ,1, 'like', t.x), t} -histogram;
    x = cast(2*rand(n ,1)-1, 'like', t.x);
%     x = -ones(n ,1, 'like', t.x);
    range(x)
    
    y = e_05_my_sum_mex(x, t);
    showInstrumentationResults e_05_my_sum_mex ...
        -proposeFL -defaultDT numerictype(1, 16);
    
    y_expected = sum(double(x));
    err = abs(y_expected - y)
    %% codegen
    %#codegen
    coder.screener("e_05_my_sum.m");    
    % -- code generation
    codegen e_05_my_sum -args {x, t} -config:lib -report
end 