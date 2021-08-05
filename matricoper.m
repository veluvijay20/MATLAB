% Creating Matrices
A = [1 3 5 ; 2 4 1 ; 3 3 3 ; 2 1 9]
%% 


A = 1:10                        % start at 1,  increment by 1, stop at 10
B = 1:2:10                      % start at 1,  increment by 2, stop at 10
C = 10:-1:3                     % start at 10, decrement by 1, stop at 3


D = [];


A = zeros(4,5)                  % 4-by-5 matrix of all zeros
B = ones (2,3)                  % 2-by-3 matrix of all ones
C = rand(3,3)                   % 3-by-3 matrix of uniform random numbers in [0,1]
D = randn(2,5)                  % 2-by-5 matrix of standard normally distributed numbers
[E,F] = meshgrid(1:5)           % 5-by-5 grids of numbers
G = eye(4)                      % 4-by-4 identity matrix
H = diag(1:4)                   % 4-by-4 diagonal matrix
I = logspace(0,2,6)             % 1-by-6 matrix of log-spaced numbers from 10^0 to 10^2
J = blkdiag(rand(2,2),ones(3,2))% 5-by-4 block diagonal matrix
K = tril(ones(3,4))             % 3-by-4 matrix whose lower triangular part is all ones.
L = triu(ones(3,4))             % 3-by-4 matrix whose upper triangular part is all ones.
M = magic(6)   % Create a magic square in which sum(A,1) = sum(A,2) = trace(A) = trace(rot90(A))


clear all
A = false(3,3)
B = zeros(3,3)
whos
%% 


% The Size of a Matrix
[nrows,ncols] = size(A)
%% 

% Transposing a Matrix
A = [1 2 3 4 ; 5 6 7 8]
B = A'
%% 

% Sums and Means
C = sum(A,1)            % Sum out dimension 1, (rows)
D = sum(A,2)            % Sum out dimension 2, (cols)
E = mean(A,1)           % Take the average along dimension 1, (rows)

F1 = max(A, 2)          % Larger of A and 2 elementwise
F = max(A,[],2)         % Find the max of each row (collapse dim 2)
G = min(A,[],1)         % Find the min of each column (collapse dim 1)
%% 

% Concatenating Matrices
A = [[1 2 3],ones(1,3)] % concatenate [1 2 3], [1 1 1] along columns
B = [[1 2 3];ones(1,3)] % concatenate [1 2 3], [1 1 1] along rows
C = [99 A 42]           % add a number at the beginning or end of an array
D = [A ; A]             % duplicate the whole row


%% 

% Basic Indexing
A = magic(6);
B = A(3,5);              % extract the entry 3 rows down, 5 cols over
C = A([1,2,3],4);        % extract the entries (1,4) ; (2,4) ; (3,4)
D = A(4,[1,1,1]);        % extract the entry (4,1) three times
E = A([2,5],[3,1]);      % extract the entries (2,3) ; (2,1) ; (5,3) ; (5,1)
F = A(:,4);              % extract the fourth column
G = A(4,:);              % extract the fourth row
H = A(:);                % extract every entry as a column vector
I = A(end,3);            % extract the entry in the last row, 3rd column
J = A(end-1,end-1);      % extract the entry in the second to last row & col
K = A(end-4:end,1);      % extract the last three entries from the first col
L = A(2:end,2:end);      % extract everything except the first row and col
M = A(end:-1:1,:);       % extract everything with the order of the rows reversed.
N = diag(A);             % extract the main diagonal of A
O = diag(rot90(A));      % extract the counter diagonal of A
P = diag(A,-2) ;         % extract the diagonal entries two diagonals left and below the main


%% 

% Logical Indexing
B = A > 30
B1 = A(A > 30)                 % get all elements in A greater than 30
B = A(isprime(A) & (A > 30))   % get all prime elements in A greater than 30



B2 = A(find(A > 30))           % same result as A(A>30) but calculated differently

test = isequal(B1,B2)
test2 = all(B1==B2)

%% 

% Assignment
A(3,2) = 999;            % assign 999 to entry (3,2)
A(:,1:3:end) = 999;      % assign 999 to every third column
A(:,1) = [2;3;5;9;8;7];  % assign new values to the first column.
A(A == 999) = 444;       % assign all entries equal to 999 the value 444



A(:) = 1:36


A = ones(3,5);
A([1,2,3,1,1],1) = A([1,2,3,1,1],1) + 1

%% 

% Deletion
A([1,3],:) = []         % delete the first and third rows from A
A(:,end) = []               % delete the last column from A

%% 

% Expansion
[nrows,ncols] = size(A)
A(4,10) = 222



A = 3
A(1:5,1:5) = 3

%% 


% Linear Indexing
A = zeros(3,5);         % create an empty matrix
A(4) = 99               % assign 99 to the fourth entry (row 3, col 1)
A(1:15) = 1:15          % assign vals 1:15 to their corresponding entries.
[rowNDX, colNDX] = ind2sub(size(A),12)
linearNDX = sub2ind(size(A),rowNDX,colNDX)
% ndx = ind2subv(size(A),12)
% linearNDX = subv2ind(size(A),ndx)

%% 

% Reshaping and Replication
A = zeros(5,6);
A(1:30) = 1:30
B = reshape(A,3,10)
check = A(11) == B(11)
A = [1 2 ; 3 4]
B = repmat(A,3,6)       % copy A vertically 3 times and horizontally 6 times


%% 

% Element-Wise Matrix Arithmetic
A = [1 2 3; 4 5 6];
B = A + 1;               % Add or subtract a scalar value from every entry
C = 3.*A;                % Multiply every entry by a scalar value
D = A ./ 3;              % Divide every entry by a scalar value
E = A .^ 3;              % Exponentiate every entry by a scalar value
F = A - [2 4 8 ; 9 1 2]; % Add or subtract two matrices of the same size, (element-wise)
G = A ./ B;              % Divide every entry in A by the corresponding entry in B
H = A .* B;              % Multiply every entry in A by the corresponding entry in B
I = A .^ B;              % Exponentiate every entry in A by the corresponding entry in B

%% 

% Matrix Multiplication
 A = [1 2 3 4 ; 5 6 7 8]
 B = 2*ones(4,3)
 C = A*B                 % Matrix multiplication of A,B
 D = (A * A') / 100      % Matrix multiply A and A', divide every entry by 100
 E = D ^ 4               % Matrix multiply D by itself 4 four times
 
 %% 
 
%  Solving linear systems
 seed = 1;
rand('twister',seed);randn('state',seed);
X = randn(100, 8);
w = randn(8,1);                        % loading vector, Wtrue
y = X*w;                              % Target or output variable, (no noise)
Wlsq = X \ y;                              % recommended way
Wlsq1 = inv(X'*X)*X'*y;                      % normal eqns - Not the recommended way
Wlsq2 = pinv(X)*y;                      % Not the recommended way
[w'; Wlsq'; Wlsq1'; Wlsq2']             % In this simple example, all same


A = magic(5);
B = det(A);              % The determinant of A
C = rank(A);             % The rank of A
E = trace(A);            % sum of diagonal entries
G = orth(A);             % an orthonormal basis for range of A
H = null(A);             % an orthonormal basis for the nullspace of A
I = chol(A*A');          % Cholesky decomposition s.t. if R = chol(X) then R'*R = X
[evecs,evals] = eig(A);  % eigen vectors and values of A, (use eigs on sparse matrices)
[U,S,V] = svd(A);        % singular value decomposition s.t. A = U*S*V'
[Q,R] = qr(A);           % QR decomposition of A

%% 

% Multidimensional Arrays

A = ones(3,5,9,2,2);                % a 5 dimensional array
B = cat(3,[1 2 ; 4 5],[3 2 ; 1 1])  % concatenate two matrices along the third dimension
C = repmat([1 2 ; 3 4],[2,2,2,2]);  % tile a matrix in 4D, twice per dimension
D = C(1,1,1,1)                      % retrieve the entry (1,1,1,1)
A(1,2,2,1) = 99;                    % assign an entry
F = mean(C,4);                      % Take the mean along the 4th dimension
G = max(A,[],3);                    % Take the maximum along the 3rd dimension

size(C)
E1 = mean(C,3);
size(E1)
E2 = squeeze(E1);
size(E2)

F = ndims(A)

G = ndims(squeeze(mean(A,2)))

a = 1:10;
n = numel(ndgrid(a,a,a,a,a,a))      % 1 million entries.

%% 

% Sparse Matrices
A = zeros(100,100);
A([1,4,8],[7,9,33]) = reshape(1:9,3,3);
n = nnz(A)              % The number of non-zero entries in A
nzeros = nonzeros(A);   % All of the non-zero entries in one big column vector
A = sparse(A)           % Convert to a sparse matrix
check = issparse(A)     % Is is really a sparse data type?
B = A * rand(100,1);    % Perform operations as you would with a non sparse matrix
C = full(A);            % Convert back to a full matrix.

A = spalloc(100,100,10)
n = nzmax(A)             % how many non-zero elements do I have room for?

%% 

% Other numeric data types
clear
A = zeros(100,100,'double');        % same as zeros(100,100)
B = zeros(100,100,'int64');         % signed 64 bit integer
C = zeros(100,100,'uint64');        % unsigned 64 bit integer
D = zeros(100,100,'single');        % single precision number
E = zeros(100,100,'int32');         % signed 32 bit integer
F = zeros(100,100,'uint32');        % unsigned 32 bit integer
G = zeros(100,100,'int16');         % signed 16 bit integer
H = zeros(100,100,'uint16');        % unsigned 16 bit integer
I = zeros(100,100,'int8');          % signed 8 bit integer
J = zeros(100,100,'uint8');         % unsigned 8 bit integer
K = false(100,100);                 % logical array
whos                                % display size of variables
AA = realmax('double');             % max sizes representable by different types
BB = intmax('int64');
CC = intmax('uint64');
DD = realmax('single');
EE = intmax('int32');
FF = intmax('uint32');
GG = intmax('int16');
HH = intmax('uint16');
II = intmax('int8');
JJ = intmax('uint8');

K = int32(100);                     % construct an int32 directly
check1 = class(K);                  % check its class
L = cast(K,'double');               % cast to a double() - also see typecast()
check2 = class(L);                  % check its class
M = int8([3,1,2,1,4]);              % create several int8s
N = sum(M,'native');                % sum ints in 'native' mode, i.e. don't cast to double
O = sum(M);                         % don't sum in 'native' mode to see the difference
class1 = class(N);                  % check the class type
class2 = class(O);                  % check the class type

%% 

% Useful Functions
A = cumsum(1:6)
C = cumprod(1:6)
D = diff(A)
A = sort(floor(10*rand(1,10))+1) % random ints from 1 to 10
counts = histc(A,1:10)           % count how often each int occurs
A = 1:10
B = filter([0.5,0.5],1,A);


