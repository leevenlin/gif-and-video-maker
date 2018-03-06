%% images read
inputdir = '.\';
imgs = dir(strcat(inputdir,'*.jpg'));
names = natsortfiles({imgs.name});

% [~,ind] = matsortfiles(imgs);
num = length(names);
%% video write
writerObj = VideoWriter('.\temp.avi');
writerObj.FrameRate = 2;
open(writerObj); 

for k = 1:num
    frame = imread(strcat(inputdir,names{k}));            % image read
    writeVideo(writerObj,frame); % 
end
close(writerObj); %