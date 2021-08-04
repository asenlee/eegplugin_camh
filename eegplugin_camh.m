function vers = eegplugin_camh( fig, try_strings, catch_strings )

  vers = 'camh1.1.1';

  if nargin < 3
      error('eegplugin_camh requires 3 arguments');
  end

  toolsmenu = findobj(fig, 'tag', 'tools');
  submenu = uimenu( toolsmenu, 'label', 'CAMH');

  cmd = [try_strings.no_check '[EEG LASTCOM] = pop_camh_openfile(EEG);' catch_strings.new_and_hist];

  uimenu( submenu, 'label', 'OPEN FILE', ...
      'callback', cmd);
