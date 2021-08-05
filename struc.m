% S.name = 'Ed Plum';
% S.score = 83;
% S.grade = 'B+';

S(2).name = 'Toni Miller';
S(2).score = 91;
S(2).grade = 'A-';

S(3) = struct('name','Jerry Garcia',...
               'score',70,'grade','C')

scores = [S.score]
avg_score = sum(scores)/length(scores)
display(S);

%-------------
s3 = struct();
s = struct(); % create an empty struct
s.val1 = 100; % add a scalar
s.val2 = 0 : 25 : 100; % add a vectorize
s.val3 = randn( 2, 3, 5 ); % add an ND array
s.char1 = 'This is a character string'; % add a character string
s.cell1 = { 100, 300, '5', 'abc' };  % add a cell array
disp( s );

%----------
% - Build the struct
s3 = struct();
s3.noodles = 30;
s3.dexter = 10;
s3.ron = 45;
s3.greg = 27;

% - Get the field names
fNames = fieldnames( s3 );

% - Loop over all fields and increment by one
for iField=1 : numel( fNames )
  s3.( fNames{ iField } ) = s3.( fNames{ iField } ) + 1;
end

disp( s3 );
%---------------

str_stud=[struct("rollno",[1 2 3], 'subjects',char('phy', 'chem' ,'maths'));...
struct("rollno",[4 5 6], 'subjects',char('phy', 'chem' ,'bio'));...
struct("rollno",[7 8 9], 'subjects',char('maths', 'comp' ,'sst'))];
str_stud

for i=1:3
    all_rollno(i,:)= str_stud(i).rollno; 
end

all_rollno 
