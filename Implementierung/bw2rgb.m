% Wandelt ein Schwarzweiss Bild in ein Farbbild um.
% "kodierungstechnisch" nat�rlich nur um es als Farbbild verarbeiten zu
% k�nnen und nicht als eigenst�ndiges Bin�rbild
% Author: Patrick Hromniak

function rgbPic = bw2rgb(bwPic)

bwPicSize = size(bwPic);

rgbPic = zeros(bwPicSize(1),bwPicSize(2),3);

rgbPic(bwPic==1)=255;
rgbPic(:,:,2) = rgbPic(:,:,1);
rgbPic(:,:,3) = rgbPic(:,:,1);

rgbPic = im2uint8(rgbPic);