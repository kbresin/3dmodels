height = 25;
width = height/3;
thickness = 2;

module sword(height, width, thickness) {
// cylinder(h=thickness, r=width*5/8, center=true, $fn=3);
// translate([-sin(30)*width*3*5/8,0,0]) scale([0.6*height/width,1,1]) rotate([0,0,180]) cylinder(h=thickness, r=width*5/8, center=true, $fn=3);
//    translate([-sin(30)*width,0,0]) rotate([0,0,180]) scale([height/width/2,1,1]) cylinder(h=thickness, r=width, center=true, $fn=3);

 translate([-height/2,0,-thickness/2]) resize([height, width , thickness]) rotate(-90) linear_extrude(1)
    import("sword.svg", center=true);


//translate([-height*5/8,0,0]) cube([height/10, width, thickness], center=true);
//translate([-height*3/4,0,0]) cube([height/8, width/4, thickness], center=true);

}

wall = 2;

module base(width, thickness) {
    difference() {
        cylinder(h=thickness, r1=width*0.9, r2=width*0.8, center=true, $fn=80);
        translate([-thickness/3/2, 0,0]) cube([1.15*thickness,1.15*thickness,width+1],center=true);    }
}


  union() {
    sword(height, width, thickness);
    translate([-height,0,0]) cube([4,2,thickness],center=true);
  }

translate([-width*1.5, width*2, 0]) base(width, thickness);