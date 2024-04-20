height = 25;
width = height/3;
thickness = 6;

module arrow(height, width, thickness) {
cylinder(h=thickness, r=width, center=true, $fn=3);
translate([-height/2+0.5,0,0]) cube([height*2/3+1, width, thickness], center=true);
}


module base(width, thickness) {
    difference() {
        cylinder(h=thickness/2, r1=width, r2=width*0.8, center=true, $fn=80);
        translate([-thickness/3/2, 0,0]) cube([4.275,2.275,width+1],center=true);    }
}

wall = 2;

difference() {
  union() {
    arrow(height, width, thickness);
    translate([height/2-4,0,-thickness/3/2]) cube([4,2,thickness*2/3],center=true);
  }
arrow(height-wall, width-wall, thickness+1);
}

translate([-width*1.5, width*2, -thickness/4]) base(width, thickness);