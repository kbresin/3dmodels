height = 25;
width = height*0.716;
thickness = 2;

module card(height, width, thickness) {
    wall=2;
    difference() {
    union() {
        difference() {
            cube([height, width, thickness], center=true);
            cube([height-wall, width-wall, thickness+1], center=true);
        }
        scale([1/0.716,1,1]) cylinder(h=thickness, r=width/2-0.5, center=true);
    }
    union() {
        translate([height/10, 0,0]) cylinder(h=thickness+1, r=height/30, $fn=40, center=true);
        rotate(72) translate([height/10, 0,0]) cylinder(h=thickness+1, r=height/30, $fn=40, center=true);
        rotate(-72) translate([height/10, 0,0]) cylinder(h=thickness+1, r=height/30, $fn=40, center=true);
        rotate(72*2) translate([height/10, 0,0]) cylinder(h=thickness+1, r=height/30, $fn=40, center=true);
        rotate (72*3) translate([height/10, 0,0]) cylinder(h=thickness+1, r=height/30, $fn=40, center=true);
    }
}
}


module base(width, thickness) {
    difference() {
        cylinder(h=thickness, r1=width/2, r2=width*0.8/2, center=true, $fn=80);
        cube([4.275,2.275,width+1],center=true);    }
}

wall = 2;

card(height, width, thickness);
translate([-height/2,0,]) cube([4,4,thickness],center=true);


translate([0,width*1.25,0]) base(width, thickness);