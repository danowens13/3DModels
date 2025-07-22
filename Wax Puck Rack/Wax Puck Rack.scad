include <Round-Anything/polyround.scad>;

$fn = 360;

holderLength = 92;
holderWidth = 70;
holderHeight = 90;
roundRad = 5;
holderPoints = [[0,0, roundRad], [holderWidth,0, roundRad], [holderWidth, holderHeight, roundRad], [0, holderHeight, roundRad]];

pennyHeight = 1.6;
pennyStackTolerance = .5;
pennyRad = 9.6;
PennyStackHeight = pennyHeight * 5 + pennyStackTolerance;
pennyStackOffset = roundRad + pennyRad;

puckRad = 55;
puckHeight = 8;

exteriorGap = 9;
interiorGap = 13;


difference(){
    polyRoundExtrude(holderPoints, holderLength, roundRad, roundRad);
    for( i = [0:1:4])
        translate([exteriorGap + i * interiorGap, holderLength / 2, holderHeight - puckRad/4])
            puckSlot();
    translate([pennyStackOffset, pennyStackOffset, PennyStackHeight / 2 + roundRad])
        pennyStack();
     translate([holderWidth - pennyStackOffset, pennyStackOffset, PennyStackHeight / 2 + roundRad])
        pennyStack();
    translate([holderWidth - pennyStackOffset, holderHeight - pennyStackOffset, PennyStackHeight / 2 + roundRad])
        pennyStack();
    translate([pennyStackOffset, holderHeight - pennyStackOffset, PennyStackHeight / 2 + roundRad])
        pennyStack();
}

module puckSlot(){
        rotate([0,90,0])
            union(){
                cylinder(h = puckHeight, r = puckRad, center=true);
                translate([holderWidth / -2,0,0]) 
                    cube([holderWidth, puckRad * 2, puckHeight], center=true);
            }
}

module pennyStack(){
    cylinder(h = PennyStackHeight, r = pennyRad, center=true);
}