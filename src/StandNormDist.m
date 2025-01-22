function integralVal = StandNormDist(interval_start, interval_end, partition_count)
  if partition_count ~= floor(partition_count)
    error('partition count must be an integer');
  end % if

  func = @(x)(exp(-0.5 * x.^2 ));
  coeff = 1/sqrt(2*pi);

  X = linspace(interval_start, interval_end, partition_count);
  hHalf = (X(2) - X(1)) / 2;


  elementArea = zeros([1, partition_count-1]);

  trapezoid = @(f_0, f_1)(hHalf * (f_0 + f_1));

  for i=1:partition_count-1
    x_0 = X(i);
    x_1 = X(i+1);
    f_0 = func(x_0);
    f_1 = func(x_1);

    elementArea(i) = trapezoid(f_0, f_1);

  end % for
  integralVal = coeff * sum(elementArea);

end % function
