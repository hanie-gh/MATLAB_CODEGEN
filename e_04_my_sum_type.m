function t = e_04_my_sum_type (dt)
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
            t.x = fi([], 1 , 16, 15);
            t.y = fi([], 1 , 16, 11);  
% debugging type. compute its values with doubles but remember its fixed point data type. 
% how far from the ragne you go.            
%         case 'scaled' 
%             t.x = fi([], 1 , 16, 15, 'DataType', 'ScaledDouble');
%             t.y = fi([], 1 , 16, 14, 'DataType', 'ScaledDouble');     
        case 'scaled'
            t.x = fi([], 1 , 16, 15, 'DataType', 'ScaledDouble');
            t.y = fi([], 1 , 16, 11, 'DataType', 'ScaledDouble');  
    end
end