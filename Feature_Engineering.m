function     [Extracted] = Feature_Engineering(FileName,FileNameP,Ct,Extracted)
%% import file
 FileNameAVI = [FileName '.csv']; 
 Adress_folder = 'E:\Activity'; %% define the directory of the data set and files
 cd(fullfile(Adress_folder,num2str(FileNameP)));
 [data, Title] = xlsread(FileNameAVI);   
     
%% CSV video frames declaration
LengthFrame = length(data);
Y1 = [];
Calibration = [];
for i=76:LengthFrame    
     %% calibrating the interested features across the frames
     Palmposition = data(i,19:21);
     coordinates = data(i,14:16);
     Alldata = data(i,25:192);
     Y1 = data;
     %Calibration = [Palmposition  ; coordinates ];
end
%Save the extracted features inside each frame, however you can transpose
ClassificationY1 = transpose(Y1);
%ClassificationY1 = Y1;
Extracted{Ct,1} = ClassificationY1;
save(FileNameP,'Extracted');
