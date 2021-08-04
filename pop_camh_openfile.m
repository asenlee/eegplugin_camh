function [EEG com] = pop_camh_openfile(EEG, varargin)

com = '';

if isempty(EEG.data)
  error('Data is empty');
end


% pop up window

if nargin < 2
  geometry = {1 1}

  utilist = {{'style', 'text', 'string', 'OPEN FILE'} ...
             {'style', 'text', 'string', 'return'}}

  result = inputgui('geometry', geometry, 'utilist', utilist, 'title', 'OPEN FILE -- pop_camh_openfile', 'helpcom', 'pophelp(''pop_camh_openfile'')');
  if isempty(result), return; end;

end
