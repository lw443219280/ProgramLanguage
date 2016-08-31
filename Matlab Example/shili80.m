h0=figure('toolbar','none',...
    'position',[198 56 350 450],...
    'name','ʵ��80');
h1=axes('parent',h0,...
    'position',[0.25 0.45 0.6 0.5],...
    'visible','off');

I=imread('flowers.tif');
imshow(I)
b1=uicontrol('parent',h0,...
    'units','points',...
    'tag','b1',...
    'style','pushbutton',...
    'string','ת��',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[50 80 60 25],...
    'callback',[...
        'handlek=waitbar(0,''initializing......'');,',...
        'pause(0.5),',...
        'i=1;,',...
        'while  i<=100,',...
        'waitbar(i/100,handlek,[num2str(i),''%finished''],handlek),',...
        'i=i+1;,',...
        'pause(0.05),',...
        'end,',...
        'pause(1.5),',...
        'cla,',...
        'delete(handlek),',...
        'Y=rgb2ntsc(I);,',...
        'J=Y(:,:,1);,',...
        'imshow(J)']);
b2=uicontrol('parent',h0,...
    'units','points',...
    'tag','b2',...
    'style','pushbutton',...
    'string','�ر�',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[150 80 60 25],...
    'callback','close');
