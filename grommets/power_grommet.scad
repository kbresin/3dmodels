difference() {
    union() {
    cylinder(h=1.8, r1=18, r2=18, $fn=60);
    difference() {
        cylinder(h=14.2, r1=14.2, r2=14, $fn=50);
        translate([0,0,2]) cylinder(h=14, r1=13, r2=13, $fn=45);
    }
    }
    union() {
        translate([0,0,-2]) cylinder(h=50, r1=5, r2=5);
        translate([-5,0,-2]) cube([10,30,20]);
    }
}