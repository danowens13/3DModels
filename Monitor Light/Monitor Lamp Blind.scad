//Blind size
blindLength = 2.5;
blindWidth = 210;
blindHeight = 50;

//notchSize
notchWidth = 25;
notchHeight = 10;

difference(){
    cube([blindLength, blindWidth, blindHeight]);
    cube([blindLength, notchWidth, notchHeight]);
}