When you do not specify an output variable, MATLAB uses the variable ans, short for answer, to store the results of your calculation.

sin(a)

ans =

    0.8415

If you end a statement with a semicolon, MATLAB performs the computation, but suppresses the display of output in the Command Window.

e = a*b;

You can recall previous commands by pressing the up- and down-arrow keys, ↑ and ↓. Press the arrow keys either at an empty command line or after you type the first few characters of a command. For example, to recall the command b = 2, type b, and then press the up-arrow key.

All MATLAB variables are multidimensional arrays, no matter what type of data. A matrix is a two-dimensional array often used for linear algebra.

Array Creation

To create an array with four elements in a single row, separate the elements with either a comma (,) or a space.

a = [1 2 3 4]

a = 1×4

     1     2     3     4

This type of array is a row vector.

To create a matrix that has multiple rows, separate the rows with semicolons.

a = [1 3 5; 2 4 6; 7 8 10]

a = 3×3

     1     3     5
     2     4     6
     7     8    10

Another way to create a matrix is to use a function, such as 
ones(),
zeros() or rand. 
For example, create a 5-by-1 column vector of zeros.

z = zeros(5,1)

z = 5×1

     0
     0
     0
     0
     0

Matrix and Array operation
a + 10
ans = 3×3

    11    13    15
    12    14    16
    17    18    20

sin(a), a' ( transpose of a)

- Standard matrix manipulation
p = a*inv(a)

 MATLAB stores numbers as floating-point values, and arithmetic operations are sensitive to small differences between the actual value and its floating-point representation

to display more decimal digits using format command: 
>> format long
p = a*inv(a) 

Reset the display to the shorter format using
format short

-- The matrix operators for multiplication, division, and power each have a corresponding array operator that operates element-wise. 
For example, raise each element of a to the third power:

a.^3 ( No space)
 
>> a.^2

ans =
     4     9
     9    25

Concatenation : 

>> a = [2 2 3; 3 3 3; 3 3 3]

a =

     2     2     3
     3     3     3
     3     3     3

[ ] - concatenation operator

(i) Horizontal concatenation( using commas ,):
 when no of rows are equal, 
>> A = [a a]

A =

     2     2     3     2     2     3
     3     3     3     3     3     3
     3     3     3     3     3     3

(ii) Vertical concatenation(using semicolon ;):
 when no of columns are equal
A = [a; a]

A = 6×3

     1     3     5
     2     4     6
     7     8    10
     1     3     5
     2     4     6
     7     8    10

Complex number:
sqrt(-1)

ans = 0.0000 + 1.0000i

to represent imaginary part, either use i or j
>> C = [3+4i 5i 6+8i; 3+3i 3+9i 3]

C =

   3.0000 + 4.0000i   0.0000 + 5.0000i   6.0000 + 8.0000i
   3.0000 + 3.0000i   3.0000 + 9.0000i   3.0000 + 0.0000i

Array indexing:
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]

A = 4×4

     1     2     3     4
     5     6     7     8
     9    10    11    12
    13    14    15    16

i. specify row and column subscripts, such as A(4,2) ( which is 14)
ii.  Linear Indexing: 
use a single subscript that traverses down each column in order:

A(8)

ans = 14

- Array bound exceed error
If you try to refer to elements outside an array on the right side of an assignment statement, MATLAB throws an error.
test = A(4,5)

Index in position 2 exceeds array bounds (must not exceed 4).

However, on the left side of an assignment statement, you can specify elements outside the current dimensions. The size of the array increases to accommodate the newcomers.

A(4,5) = 17

A = 4×5

     1     2     3     4     0
     5     6     7     8     0
     9    10    11    12     0
    13    14    15    16    17

To refer to multiple elements of an array, use the colon operator, which allows you to specify a range of the form start:end. For example, list the elements in the first three rows and the second column of A:

A(1:3,2) // A(start-row:end-row, column)

ans = 3×1

     2
     6
    10
    14
The colon alone, without start or end values, specifies all of the elements in that dimension. For example, select all the columns in the third row of A:

A(3,:)

ans = 1×5

     9    10    11    12     0

The colon operator also allows you to create an equally spaced vector of values using the more general form start:step:end.

B = 0:10:100

B = 1×11

     0    10    20    30    40    50    60    70    80    90   100

If you omit the middle step, as in start:end, MATLAB uses the default step value of 1.

Workspace variable
to clear workspace variables: clear
to see workspace variables: whos
x=3;
y=4;
w=((x^2)*(y^3))/((x-y)^2);



