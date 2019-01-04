function t = e_05_my_sum_type (dt)
    switch dt 
        case 'double'
            t.x = double([]);
            t.y = double([]);
        case 'single'
            t.x = single([]);
            t.y = single([]); 
%         case 'fixed'
%             t.x = fi([], 1 , 16, 15);
%             t.y = fi([], 1 , 16, 14);       
        case 'fixed'
            F = fimath('RoundingMethod', 'Floor', ...
                'OverflowAction', 'Wrap', ...
                'ProductMode', 'FullPrecision', ...
                'SumMode', 'KeepLSB', ...
                'SumWordLength', 32, ...
                'CastBeforeSum', true);
            t.x = fi([], 1 , 16, 15, F);
            t.y = fi([], 1 , 16, 11, F);  
%         case 'scaled'
%             t.x = fi([], 1 , 16, 15, 'DataType', 'ScaledDouble');
%             t.y = fi([], 1 , 16, 14, 'DataType', 'ScaledDouble');     
        case 'scaled'
            t.x = fi([], 1 , 16, 15, 'DataType', 'ScaledDouble');
            t.y = fi([], 1 , 16, 11, 'DataType', 'ScaledDouble');  
    end
end