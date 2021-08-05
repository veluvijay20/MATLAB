% % cell array of structs
% N = 3;
% list = cell(N,1)
% for i = 1:N
%   list{i} = struct('field1',1,'field2',2);
% end
% % array of structs
% list = [list{:}];


C = cell (2 ,2) ; 
C{1 ,1} = rand (3) ; 
C{1 ,2} = char ('john' , 'raj') ;
C{2 ,1} = 100 ;
C{2 ,2} = cell(3,3); 

C{1,1}  
C{1,2} 
C{2,1}
C{2,2}

celldisp(C)
cellplot(C)
