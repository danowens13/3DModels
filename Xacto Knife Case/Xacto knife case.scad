boxLength = 129.7;
boxWidth = 38.8;
boxHeight = 9.9;

thickness = 2;
overhangs = 5;


difference() {
    cube([boxWidth + thickness * 2, boxLength + thickness * 2, boxHeight + thickness * 2], center = true);
    
    cube([boxWidth, boxLength, boxHeight], center = true);
    
    translate([0, 0, (boxHeight + thickness) / 2])
        cube([boxWidth - overhangs * 2, boxLength - overhangs, thickness], center = true);
 
    translate([0,boxLength / 2,0])
        cube([boxWidth + thickness * 2, thickness + overhangs,boxHeight + thickness * 2 ], center = true);
};

