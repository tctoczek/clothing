function [bodLength, bodHeight, bodHalterHeight, bodHalterWidth, strapLength] = halterTop(waistCir, topLength, halterWidth, halterHeight)
%circleSkirt Summary of this function goes here
%   List of variables
%   Inputs: waistCir, topLength, halterWidth, halterHeight
%   Outputs: bodLength, bodHeight, bodHalterHeight, bodHalterWidth,
%   strapLength

seamAllowance = 3/8;

%bodLength = waistCir + 2*seamAllowance
bodLength = waistCir + 2*seamAllowance;

%bodHeight = desired top length + allowances
bodHeight = topLength + 2*seamAllowance; 

%bodHalterHeight = desired halterheight + desired top length + allowances
bodHalterHeight = halterHeight + topLength + 2*seamAllowance;

%bodHalterWidth = desired halter width + seam allowance
bodHalterWidth = halterWidth + 2*seamAllowance; 

%strapLength = arbitrary, = waist cir 
strapLength = waistCir;

end