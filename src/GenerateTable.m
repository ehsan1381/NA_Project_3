rangeStart = -3
rangeEnd = 3
columnStepSize = 0.01
rowStepSize = 0.1

rowCount = (rangeEnd - rangeStart) / rowStepSize + 1;
columnCount = 10;

Array = zeros([rowCount, columnCount]);

column = [rangeStart:rowStepSize:rangeEnd].';


for i=1:columnCount
  calculatedColumn = column + ((i-1) / 100);
  for j=1:rowCount
    calculatedColumn(j) = Phi(calculatedColumn(j));
  end % for
  Array(:, i) = calculatedColumn;

end % for

% Adding the indecies
columnIndex = [-3:0.1:3].';
rowIndex = [0:0.01:0.09];
Table = zeros([rowCount+1, columnCount+1]);
Table(1, 2:11) = rowIndex;
Table(2:62, 1) = columnIndex;
Table(2:62, 2:11) = Array;

% To have a clean workspace
clear i j column rowCount columnCount column calculatedColumn;
