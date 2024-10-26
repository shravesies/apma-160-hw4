% define S and num_iters
S = 5.7;
num_iters = 12;

% initial conditions
x0_1 = 0.93;
x0_2 = 0.935;
x0_3 = 0.94;

% outputs
[S1, ~] = fast_inv_sqrt(S, x0_1, num_iters);
[S2, ~] = fast_inv_sqrt(S, x0_2, num_iters);
[S3, ~] = fast_inv_sqrt(S, x0_3, num_iters);