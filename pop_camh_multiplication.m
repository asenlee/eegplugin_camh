function [EEG, com] = pop_camh_multiplication(EEG, varargin)

com = '';

%check that data is present
if isempty(EEG.data)
  error('Data is empty');
end


% pop up window
% -------------
if nargin < 2
  geometry = { 1 [ 1 1 ] 1 };

  uilist = {{'style', 'text', 'string', 'Enter Two Numbers for Multiplication:'}...
            {'style', 'edit', 'string', ''}...
            {'style', 'edit', 'string', ''}...
            {'style', 'pushbutton', 'string', 'Compute', 'callback', 'camh_multiplication();'} ...
            };

  result = inputgui('geometry', geometry, 'uilist', uilist, 'title', 'Multiplication -- pop_camh_multiplication()', 'helpcom', 'pophelp(''pop_camh_multiplication'')');
  if isempty(result), return; end

end
