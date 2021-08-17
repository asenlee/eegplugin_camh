function [EEG, com] = pop_camh_summation(EEG, varargin)

com = '';

%check that data is present
if isempty(EEG.data)
  error('Data is empty');
end


% pop up window
% -------------
if nargin < 2
  geometry = { 1 [ 1 1 ] 1 };

  uilist = {{'style', 'text', 'string', 'Enter Two Numbers for Summation:'}...
            {'style', 'edit', 'string', ''}...
            {'style', 'edit', 'string', ''}...
            {'style', 'pushbutton', 'string', 'Compute', 'callback', 'camh_summation();'} ...
            };

  result = inputgui('geometry', geometry, 'uilist', uilist, 'title', 'Summation -- pop_camh_summation()', 'helpcom', 'pophelp(''pop_camh_summation'')');
  if isempty(result), return; end

end
