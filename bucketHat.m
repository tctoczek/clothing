function [circleRad, hatHeight, brimWidth] = bucketHat(headCir)
%   List of variables
%   Inputs: headCir
%   Outputs: circleRad, hatHeight, brimWidth

seamAllowance = 3/8;
hem = 1/2;

%circleRad = headCir + seamAllowance
circleRad = headCir + seamAllowance; 

%hatHeight = headCir/(2*(pi)) + 2*seamAllowance
hatHeight = (headCir/(2*pi)) + 2*seamAllowance;

%brimWidth = headCir/(4*pi) + 1*seamAllowance + 1*hem
brimWidth = (headCir/(4*pi)) + seamAllowance + hem;

end
