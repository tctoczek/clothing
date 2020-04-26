function [bodLength, bodWidth, garterLength, garterWidth] = tubeTop(chestCir, bustCir, waistCir, topLength)
%circleSkirt Summary of this function goes here
%   List of variables
%   Inputs: chestCir, bustCir, waistCir, topLength
%   Outputs: bodLength, bodWidth, garterLength, garterWidth

seamAllowance = 3/8;
hem = 1/2;

% bodLength = topLength + 2*hem
bodLength = topLength + (2*hem);

% bodWidth = bustCir + 2*seamAllowance
bodWidth = bustCir + (2*seamAllowance);

% garterLength = chestCir + 2*seamAllowance
garterLength = chestCir + (2*seamAllowance);

% garterWidth = (bodLength/10)
garterWidth = (bodLength/10);

end
