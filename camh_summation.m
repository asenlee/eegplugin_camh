function EEG = camh_summation(EEG, varargin)

  prompt = {'Enter a Number: ', 'Enter a Number you would like to add: '};
  answer = inputdlg(prompt, 'Summation');
  output = str2double(answer{1}) + str2double(answer{2});
  disp(output);

end
