function phiValue = Phi(point)
  % since we cannot use -inf in compuatation we approximate it
  % with a large negative value
  negativeInfApprox = -2^10;
  partitionCount = ceil(abs(negativeInfApprox) - abs(point)) * 2^7;

  phiValue = StandNormDist(negativeInfApprox, point, partitionCount);

end % function
