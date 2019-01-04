function t = e_06_my_sum_type (dt)
    switch dt 
        case 'double'
            t.x = double([]);
            t.y = double([]);
        case 'single'
            t.x = single([]);
            t.y = single([]); 
           
        % Editor tab: insert fimath
        case 'fixed'
            F = fimath('RoundingMethod', 'Floor', ...
                'OverflowAction', 'Wrap', ...
                'ProductMode', 'FullPrecision', ...
                'SumMode', 'KeepLSB', ...
                'SumWordLength', 32, ...
                'CastBeforeSum', true);
            t.x = fi([], 1 , 16, 15, F);
            t.y = fi([], 1 , 32, 15, F);  
    
        case 'scaled'
            t.x = fi([], 1 , 16, 15, 'DataType', 'ScaledDouble');
            t.y = fi([], 1 , 16, 11, 'DataType', 'ScaledDouble');  
    end
end