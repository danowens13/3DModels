$fn = 360;

//Mount
mountHeight = 25;
mountLength = 15;
mountWidth = 75;
overhangLength = 22;
overhangHeight = 7;

//Post - Extends above the mount to hold the arm
postLength = 14;
postWidth = 15;
postHeight = 40;

//Arm
armWidth = 75;
armDiameter= postWidth;

//male ball socket
ballDiameter = 18;


//Mount
difference() {
    cube([mountLength + overhangLength, mountWidth, mountHeight + overhangHeight], center = true);
    translate([mountLength / 2, 0, overhangHeight / -2])
        cube([overhangLength, mountWidth, mountHeight], center=true );
}

//Post
translate([(mountLength + overhangLength- postLength) / -2,0,(mountHeight + overhangHeight + postHeight) / 2])
    cube([postLength, postWidth, postHeight], center=true);

//Arm
translate([(mountLength + overhangLength) / -2, 0, (mountHeight + overhangHeight) / 2 + postHeight])
rotate([0, 90, 0])
    cylinder(h = armWidth, r = armDiameter / 2);

// male ball socket
translate([(mountLength + overhangLength) / -2 + armWidth,0,(mountHeight + overhangHeight) / 2 + postHeight])
    sphere(r = ballDiameter / 2);