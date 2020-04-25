function [bodLength, bodWidth, sleeveLength, sleeveWidth, bodGarterTop, bodGarterBottom, sleeveGarter] = offShoulder(chestCir, bustCir, waistCir, topLength, armCir,sleeveL, garterWidth)
%circleSkirt Summary of this function goes here
%   List of variables
%   Inputs: chestCir, bustCir, waistCir, topLength, armCir,
%   sleeveL, garterWidth
%   Outputs: bodLength, bodWidth, sleeveLength, sleeveWidth, bodGarterTop,
%   bodGarterBottom, sleeveGarter

seamAllowance = 3/8;

%bodLength = bustCir + 2*seamAllowance + 5"*extra allowance for bunching
bodLength = bustCir + 5 + (2*seamAllowance); 

%bodWidth = based on desired length + double garter widths each for top and bottom + small space for garter + seam allowances
bodWidth = topLength + 4*garterWidth + 2*(1/4) + 2*seamAllowance;

%sleeveLength = arm circumference + 3" *extra allowance for bunching + 2*seam allowance
sleeveLength = armCir + 3 + 2*seamAllowance;

%sleeveWidth = based on desired sleeve length + double garter widths for top and bottom + seam allowance
sleeveWidth = sleeveL + + 4*garterWidth + 2*(1/4) + 2*seamAllowance;

%bodGarterTop = chestCir - 2" + seamAllowance
bodGarterTop = chestCir - 2 + seamAllowance;

%bodGarterBootom = waistCir - 2" + seamAllowance
bodGarterBottom = waistCir - 2 + seamAllowance;

%sleeveGarter = armCir - 1 + seamAllowance
sleeveGarter = armCir -1 + seamAllowance;


end