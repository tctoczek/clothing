function [smallDiam, bigDiam, zipLength, waistbLength, waistbWidth] = circleSkirt(waistCir,hipCir, skirtLength, waistbHeight)
%circleSkirt Summary of this function goes here
%   List of variables
%   Inputs: waistCir, hipCir, skirtLength, waistbHeight
%   Outputs: bigDiam, smallDiam, zipLength, waistbLength, waistbWidth

seamAllowance = 1/2;
hem = 1;

%smallDiam = (waistCir+2*seamAllowance/pi)
smallDiam = ((waistCir + (2*seamAllowance)) /pi);

%bigDiam = 2*skirtLength + smallDiam + 2*seamAllowance + 2*hem
bigDiam = (2*skirtLength) + smallDiam + 2*seamAllowance + 2*hem;

%zipLength = (1/2)*(hipCir-waistCir) + waistbHeight
zipLength = ((1/2) * ( hipCir - waistCir )) + waistbHeight;

%waistbLength = waistCir + 2*seamAllowance
wasitbLength = waistCir + (2*seamAllowance);

%waistbWidth = (waistbHeight) + seamAllowance + hem
waistbWidth = (waistbHeight) + seamAllowance + hem;

end
