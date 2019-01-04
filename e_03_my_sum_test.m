function e_03_my_sum_test ()
    n = 10;
%     t = e_03_my_sum_type ('double');
    t = e_03_my_sum_type ('single');
    % x = cast(2*rand(n ,1)-1); % first version
    x = cast(2*rand(n ,1)-1, 'like', t.x);

    %%
    buildInstrumentedMex e_03_my_sum ...
    %-args {zeros(n ,1)} -histogram; % first version - care about only type not value    
    -args {zeros(n ,1, 'like', t.x), t} -histogram; % care about only type not value

    % y = e_03_my_sum_mex(x); % first version
    y = e_03_my_sum_mex(x, t);
    showInstrumentationResults e_03_my_sum_mex ...
        -proposeFL -defaultDT numerictype(1, 16);
    
    y_expected = sum(double(x));
    err = y_expected - y;
    %% codegen
    %#codegen
    coder.screener("e_03_my_sum.m");    
    % -- code generation
    codegen e_03_my_sum -args {x, t} -config:lib -report
end 