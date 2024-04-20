height = 25;
width = height/3;
thickness = 2;

module sword(height, width, thickness) {

 translate([-height/2,0,-thickness/2]) resize([height, width , thickness]) rotate(-90) linear_extrude(1)
    import("sword.svg", center=true);


//translate([-height*5/8,0,0]) cube([height/10, width, thickness], center=true);
//translate([-height*3/4,0,0]) cube([height/8, width/4, thickness], center=true);

}

wall = 2;

module base(width, thickness) {
    difference() {
        cylinder(h=thickness/2, r1=width, r2=width*0.8, center=true, $fn=80);
        translate([-thickness/3/2, 0,0]) cube([4.275,2.275,width+1],center=true);    }
}


difference() {
  union() {
    sword(height, width, thickness);
    translate([-height,0,-thickness/3/2]) cube([4,2,thickness*2/3],center=true);
  }
//sword(height-wall, width-wall, thickness+1);
  sword(0,0,0);
}

translate([-width*1.5, width*2, -thickness/4]) base(width, thickness);
