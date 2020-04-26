function [topCut, bottomCut, innerCut, outerCut, garterLength, waistbLength, waistbWidth] = slipPants(waistCir, hipCir, calfCir, crotchHeight, pantLength, garterWidth)
%slipPants() - Generates measurement values needed to create slip-on pants
%following pattern pieces given
%   List of variables
%   Inputs: waistCir, hipCir, thighCir, calfCir, crotchHeight, pantLength, garterWidth
%   Outputs: topCut, bottomCut, innerCut, outerCut, garterLength, waistbLength, waistbWidth

seamAllowance = 3/8;

%topcut = 1/4 of hipCir + 2*seamAllowance + 1/4" fit allowance
topCut = (hipCir/4) + 2*seamAllowance + (1/4); 

%bottomCut = calfCir/2 + 2" fit allowance + 2*seamAllowance
bottomCut = (calfCir/2) + 2 + 2*seamAllowance;

%innerCut = pantLength - crotchHeight + 2*seamAllowance
innerCut = pantLength - crotchHeight + 2*seamAllowance;

%outerCut = pantLength + seam allowances
outerCut = pantLength + 2*seamAllowance;

%garterLength = waistCir - 1" + seam allowance
garterLength = waistCir - 1 + seamAllowance;

%waistbandlength = 4* topcut - 6*seamAllowance
waistbLength = (4*topCut) - 6*seamAllowance;

%waistband width = garterwidth*2 + 1/4" allowance + 2*seamAllowance
waistbWidth = 2*garterWidth + (1/4) + 2*seamAllowance;

end