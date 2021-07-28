function [fileNames, pathName]=Z_getSetsFileNames
[fileNames,pathName] = uigetfile({'*.*'},'Choose Sets Files','multiselect','on');
fileNames=fileNames';

 if ~iscell(fileNames)
     fileNames={fileNames};
 end