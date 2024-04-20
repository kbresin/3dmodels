difference() {
    union() {
    cylinder(h=2, r1=20, r2=20, $fn=60);
    difference() {
        cylinder(h=7, r1=16.5, r2=16.5, $fn=50);
        translate([0,0,2]) cylinder(h=7, r1=15.25, r2=15.25, $fn=45);
    }
    }
    translate([4,-8,-2]) cube([8,16,10]);
}