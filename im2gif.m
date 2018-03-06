
%% images read
inputdir = './';
imgs = dir(strcat(inputdir,'*.jpg'));
names = natsortfiles({imgs.name});

% [~,ind] = matsortfiles(imgs);
num = length(names);

%% gif write
for j=1:num
     img=imread(strcat(inputdir,names{j}));
     %img = im(20:300,150:1400,:);
     imshow(img)

     [I,map]=rgb2ind(img,20); 
     if j==1
        imwrite(I,map,'rrtnew.gif','gif', 'Loopcount',inf,'DelayTime',0.1);%FIRST
     else
        imwrite(I,map,'rrtnew.gif','gif','WriteMode','append','DelayTime',0.1);
     end
 end
