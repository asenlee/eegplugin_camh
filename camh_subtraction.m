function EEG = camh_subtraction(EEG, varargin)

    prompt = {'Enter a Number you would like to subtract from: ', 'Enter a Number you would like to subtract with: '};
    answer = inputdlg(prompt, 'Subtraction');
    output = str2double(answer{1}) - str2double(answer{2});
    disp(output);

end
