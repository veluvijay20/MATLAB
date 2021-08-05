r = input(' Enter the desired radius ' ) ; 
theta = linspace (0 , 2*pi ,100) ;  
r = r*ones (size (theta) ); % make r the same s ize as theta
coord = menu( ' Circle Plot' ,'Cartesian' , 'Polar') ; 
if coord==1
% if the first opt ion is selected 
% - from the menu 
plot (r .*cos (theta) ,r.*sin (theta) )
axis ( 'square' ) 
else 
end 
polar (theta ,r) ; 