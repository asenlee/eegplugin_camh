function EEG = camh_multiplication(EEG, varargin)

  prompt = {'Enter a Number: ', 'Enter a Number you would like to multiply by: '};
  answer = inputdlg(prompt, 'Muliplication');
  output = str2double(answer{1}) * str2double(answer{2});
  disp(output);

end
