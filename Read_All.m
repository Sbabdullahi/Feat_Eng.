
%% Function to read .csv frames
function Read_All
  fb = fopen('NameListP500.txt','r');
  FileNameP = fgetl(fb);
  RoundP = str2num(FileNameP);
  Extracted = {};
     for Ct = 1:RoundP
          FileNameP = fgetl(fb);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fr = fopen('NameList500.txt','r');
FileName = fgetl(fr);
Round = str2num(FileName);
         for Ct = 1:Round                 
             try
         FileName = fgetl(fr);
       [Extracted] = Feature_Engineering(FileName,FileNameP,Ct,Extracted);
                   
             catch ME
                 disp('mistake to read frame number'); disp(Ct); 
             end 
             
         imtool close all
         close all 
         end
     end
    
















