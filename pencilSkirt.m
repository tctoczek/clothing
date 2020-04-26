function [skirtLength, skirtHeight, zipLength, waistbLength, waistbWidth] = pencilSkirt(waistCir, hipCir, skirtDepth, waistbHeight)
%circleSkirt Summary of this function goes here
%   List of variables
%   Inputs: waistCir, hipCir, skirtDepth, waistbHeight
%   Outputs: skirtLength, skirtHeight, zipLength, waistbLength, waistbWidth

seamAllowance = 3/8;
hem = 1;

% skirtLength = (waistCir/2) + 2* seamAllowance
skirtLength = (waistCir/2) + (2*seamAllowance);

% skirtHeight = skirtDepth + seamAllowance + hem
skirtHeight = skirtDepth + seamAllowance + hem;

% zipLength =(hipCir - waistCir)/2 + waistbHeight
zipLength = ((1/2) * ( hipCir - waistCir )) + waistbHeight;

% waistbLength = waistCir + 2*seamAllowance
waistbLength = waistCir + (2*seamAllowance);

%waistbWidth = waistbHeight + hem + seamAllowance
waistbWidth = waistbHeight + hem + seamAllowance;


end
