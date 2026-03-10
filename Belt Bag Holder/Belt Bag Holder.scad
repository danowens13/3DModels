$fn = 360;

clipGapWidth = 3;
clipWidthHookSide = 5;
clipWidthPantSide = 5;
clipHeight = 60;
clipTopHeight = 20;
clipLength = 15;
hookHeight = 7.5;
hookAngle = 130;

clipWidth = clipGapWidth + clipWidthHookSide + clipWidthPantSide;

//Clip
linear_extrude(clipLength) 
    difference(){
            square([clipWidth, clipHeight], center = true);
        translate([ (clipWidthHookSide - clipWidthPantSide) / 2, (clipTopHeight) / -2,0])
            square([clipGapWidth, clipHeight - clipTopHeight], center = true);
    }
//Hook
translate([clipWidth / -2, 0, clipLength / 2] )
    rotate(90)
        rotate_extrude(angle = hookAngle * -1)
            translate([((clipHeight - hookHeight)/ -2),0, 0])
                    square([hookHeight, clipLength], center = true);