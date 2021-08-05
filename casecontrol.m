var1=10;
var2=5;
operation = input ('Enter the operation= ','s'); 
switch operation
case 'add'
    output=var1+var2;
    disp(output);
case {'multiply','product'}
    output=var1*var2;
    disp(output);
case {'subtract','sub'}
    output=var1-var2;
    disp(output);
case 'divide'
    output=var1/var2;
    disp(output);
otherwise
    disp('What else you want?');
end
