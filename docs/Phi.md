# Description
This is a very simple function. and it only has one purpose. Since in computer arithmetic,
specifically floating point arithmetic, we cannot do computations with infinities we have to limit
ourselves to some large values that mimic infinity to the scale that fits our needs. In the case of
the posed problem we let the value for $-\infty$ be $-1024$.
This function first calculates the number of partitions given a point and an approximation for
$-\infty$ as discussed above. This number is computed in such a way that each subinterval of length 1
is partitioned into $2^7$ pieces. The choices for these values are discussed in the 'README' of this
project.
In the end of the function we pass the necessary arguments to 'StandNormDist' function which computes
the value of $\Phi(X \le x)$ where $x$ is the argument passed to this function.
