%% FUNCTIONS
function my_closereq(src,callbackdata)
% Close request function 
% to display a question dialog box 
   selection = questdlg('Close This Figure?',...
      'Close Request Function',...
      'Yes','No','Yes'); 
   switch selection 
      case 'Yes'
          global continue_looping;
          continue_looping = false;
          delete(gcf)
      case 'No'
      return 
   end
end