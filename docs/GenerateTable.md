# Description
This is a MATLAB script which performs the necessary computations to generate the table of values
requested by the problem.

# Walkthorugh
We first define some initial values and parameters given by the problem.
An array of zeros with the required dimensions is initiated to store the computed values.
A temporary column is initiated with the range of values from start of the interval to the end with
step also defined by the problem. As default it is set to $0.1$.
Using a nested for loop structure we first iterate over columns with steps of $0.01$ and in each
iteration the internal for loop will compute the values using function "Phi" and store it in a
temporary array. After these values are computed we store that temporary column in the array
previously initialized.

After the for loops are complete we have a table of all the values. However using this table is
difficult to access standard normal distribution values. So we create another array that has one
more row and one more column. We will set the first row and first column with the indices for each.
Just like a table found usually on the internet we can access value for standard normal distribution
by locating the row and column indices which add up to that value. For example to find
$\Phi(X \le 2.56)$ we find the row which has index $2.5$ and the column which has index $0.05$. Then
the number at these indices is what we are looking for.

In this specific problem however we have two choices of making the table. One is to separate the
positive and negative ranges and make a separate table for each, or have one table containing both.
For ease of use and convenience we chose the latter. But the method is the same. Add row and column
index values to the requested input, locate, and read.

In the end of this script we clear some of the workspace variables that were created in the process.
