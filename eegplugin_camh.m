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

  % create menus
  % -------------------------
  uimenu( submenu, 'label', 'OPEN FILE', 'callback', comopen);
%  uimenu( submenu, 'label', 'function 2', 'callback', ...);
%  uimenu( submenu, 'label', 'functino 3', 'callback', ...);
%  uimenu( submenu, 'label', 'function 4', 'callback', ...);
%  uimenu( submenu, 'label', 'functino 5', 'callback', ...);

end
