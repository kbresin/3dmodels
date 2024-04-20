
pins = 7;
pin_width=5;
tray_width=1.75*pin_width*pins;
tray_height=5.5;
tray_length=pin_width*10;

difference() {
cube([tray_length,tray_width,tray_height], center=true);
    {
        union() {
for (i = [0:1:pins-1])
    translate(  [   pin_width-tray_length/2,
                    1.25*pin_width+i*pin_width*1.6-tray_width/2,
                    tray_height/2
                ] ) 
        sphere(r=pin_width/2, $fn=12);

for (i = [0:1:pins-1])
    translate(  [   pin_width*2-tray_length/2,
                    1.25*pin_width+i*pin_width*1.6-tray_width/2,
                    tray_height/2
                ] ) rotate([90,0,90]) cylinder(r=pin_width/2, h=pin_width*3.5, $fn=12);
}

translate([pin_width+tray_length/6,0,pin_width/2]) cube([tray_length/3,tray_width-pin_width*2,tray_height], center=true);
}
}