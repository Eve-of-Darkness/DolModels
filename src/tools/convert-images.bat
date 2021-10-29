REM How to create images with watermark in 2 steps 

REM "Original" folder : contain original images  
REM "Converted" folder : will contain final images with watermark

REM Step 1 : crop & border 
cd Original
FOR %a IN (*.jpg) DO magick convert -crop -12-12 -mattecolor lightgrey -frame 6x6+2+2 %a ..\Converted\%a

REM Step 2 : add watermark with DOL log 
cd ..\Converted\
FOR %a IN (*.jpg) DO magick composite -gravity SouthEast -geometry +10+10 ..\watermark\dolwm.png %a %a


