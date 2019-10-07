timer = 0;
a=0;
isHold = true;
timerLettre = 2*power(10,6);
PressCount = 0;
TabCourtLong = array_create(6,-1);
ActualLetter = 0;

tabSOS = array_create(3);
tabSOS[0] = global.tabS;
tabSOS[1] = global.tabO;
tabSOS[2] = global.tabS;

SOSDone = false;

tabReponseScenario = [0,0,1,0,0,0,0,1,1,0,0];

tabJIJI = array_create(4);
tabJIJI[0] = global.tabJ;
tabJIJI[1] = global.tabI;
tabJIJI[2] = global.tabJ;
tabJIJI[3] = global.tabI;

IdDone = false;



writingTimer = 0;
startWriting = 6;


TransmissionDone = false;

enable = true;

image_speed = 0;
image_index = 0;
