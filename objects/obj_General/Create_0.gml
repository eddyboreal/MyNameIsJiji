global.tabS = [0,0,0,-1,-1,-1];
global.tabO = [1,1,1,-1,-1,-1];
global.tabJ = [0,1,1,1,-1,-1];
global.tabI = [0,0,-1,1,-1,-1];
global.tabD = [1,0,0,-1,-1,-1];
global.tabF = [0,0,1,0,-1,-1];
global.tabPoint = [0,0,1,1,0,0];
global.tabL = [0,1,0,0,-1,-1];
global.tabV = [0,0,0,1,-1,-1];
global.tabE = [0,-1,-1,-1,-1,-1];
global.tabU = [0,0,1,-1,-1,-1];

global.tabCaseMorse = array_create(18);

for(i=1;i<=18;i++){
	tabCaseMorse[i-1] = asset_get_index("obj_AfficheMorse"+string(i));
} 

