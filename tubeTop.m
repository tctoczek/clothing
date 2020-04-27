function [bodLength, bodWidth, garterLength, garterWidth] =...
    tubeTop(chestCir, bustCir, topLength)
%tubeTop() - Generates measurement values needed to create a sleeveless tube top pattern
%piece following pattern pieces given
%   List of variables
%   Inputs: chestCir, bustCir, topLength
%   Outputs: bodLength, bodWidth, garterLength, garterWidth
%   - Therese Toczek

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
