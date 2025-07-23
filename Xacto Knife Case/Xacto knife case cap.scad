boxLength = 129.7;
boxWidth = 38.8;
boxHeight = 9.9;
thickness = 2;
lidLength = 14;


difference (){
    translate([0,thickness,0])
        cube([boxWidth + thickness * 4, lidLength + thickness, boxHeight + thickness * 4], center = true);
    cube([boxWidth + thickness * 2, lidLength, boxHeight + thickness * 2], center = true);
}