function phiValue = Phi(point)
  % since we cannot use -inf in compuatation we approximate it
  % with a large negative value
  negativeInfApprox = -1000;
  partitionCount = ceil(abs(negativeInfApprox) - abs(point)) * 100;

  phiValue = StandNormDist(negativeInfApprox, point, partitionCount);

end % function
