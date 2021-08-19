function EEG = camh_division(EEG, varargin)

  prompt = {'Enter a Number: ', 'Enter a Number you would like to divide by: '};
  answer = inputdlg(prompt, 'Division');
  output = str2double(answer{1}) / str2double(answer{2});
  disp(output);

end
