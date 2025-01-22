# Description
This function returns $\frac{1}{sqrt(2 \pi)} \int_a^bexp(-\frac{1}{x^2})$. It takes in three
arguments. A start $a$ and an end $b$ for integration and a partition count. This last argument
dictates to how many equally sized pieces is the interval $[a, b]$ divided. The method chosen for
numerical integration is the trapezoid rule.

# Walkthrough
We first check if argument 'partition_count' is an integer. If not we return an error. A function
handle for $exp(\frac{1}{2} x^2)$. Since the coefficient $\frac{1}{\sqrt{2 * \pi}}$ cannot be
accurately computed and represented, we compute it once and then after the integration is complete
we multiply them.
An array of partitions is created using 'linspace' function in MATLAB. $\frac{h}{2}$ is also
computed and stored.
An array of zeros named 'elementArea' is also initialized to allocate space in the memmory. This array will store values
given by trapezoid rule.
A function handle for the trapezoid rule is defined for ease of use.
In a for loop we iterate over an index $i$. At each iteration we get the following values $x_i,
x_{i+1}, f_i, f_{i+1}$.
The function handle for trapezoid rule defined before is called on these values and its output is
stored in 'elementArea'.
In the end we sum elements of 'elementArea' and multiply $\frac{1}{\sqrt{2 * \pi}}$.
