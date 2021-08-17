function vers = eegplugin_camh( fig, try_strings, catch_strings )

  vers = 'camh1.1.1';

  if nargin < 3
      error('eegplugin_camh requires 3 arguments');
  end

  % find tools menu
  % ---------------
  toolsmenu = findobj(fig, 'tag', 'tools');
  submenu = uimenu( toolsmenu, 'label', 'CAMH', 'separator', 'on');

  % menu callbacks
  % --------------
  comopen = [try_strings.no_check '[EEG LASTCOM] = pop_camh_openfile(EEG);' catch_strings.new_and_hist];
  comsum = [try_strings.no_check '[EEG LASTCOM] = pop_camh_summation(EEG);' catch_strings.new_and_hist];
  comsub = [try_strings.no_check '[EEG LASTCOM] = pop_camh_subtraction(EEG);' catch_strings.new_and_hist];
  commult = [try_strings.no_check '[EEG LASTCOM] = pop_camh_multiplication(EEG);' catch_strings.new_and_hist];
  comdiv = [try_strings.no_check '[EEG LASTCOM] = pop_camh_division(EEG);' catch_strings.new_and_hist];

  % create menus
  % -------------------------
  uimenu( submenu, 'label', 'OPEN FILE', 'callback', comopen);
  uimenu( submenu, 'label', 'Summation', 'callback', comsum);
  uimenu( submenu, 'label', 'Subtraction', 'callback', comsub);
  uimenu( submenu, 'label', 'Muliplication', 'callback', commult);
  uimenu( submenu, 'label', 'Division', 'callback', comdiv);

end
