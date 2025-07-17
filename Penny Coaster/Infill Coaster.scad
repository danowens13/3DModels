$fn = 360;
pennyRad = 9.6;
pennyHeight = 1.6;
bufferHeight = .8;
coasterDiameter = 50;
wallThickness = 2;

difference(){
cylinder(h = (2 * (pennyHeight + 2 * bufferHeight)), r = coasterDiameter, center = true);
for(i = [1:12])
    translate([(coasterDiameter - wallThickness - pennyRad) * sin(360 * i / 12), (coasterDiameter - wallThickness - pennyRad) * cos(360 * i /12), -1 * pennyHeight])
        cylinder(h = pennyHeight, r = 9.6, center = true);
}