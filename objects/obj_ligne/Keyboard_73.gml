Animating = true;
//increase fishing line height (modifying his scale)
if(ActualState == 0){
	if(self.image_yscale <=10){
		self.image_yscale +=0.3;
	}
	//if fishing line goes too far
	else{
	//Start fishing line animation
	F_Animate();
	}
}