$fn=1000;
difference() {
	cylinder(d=16, h=1.6, center=true);
	translate([0,0,0.6]) cylinder(d=4, h=1.6, center=true);
	translate([2.35/2,0,0]) cylinder(d=0.6, h=1.8, center=true);
	translate([-2.35/2,0,0]) cylinder(d=0.6, h=1.8, center=true);
	translate([0,-2.35/2,0]) cylinder(d=0.6, h=1.8, center=true);
	translate([0,2.35/2,0]) cylinder(d=0.6, h=1.8, center=true);
	difference(){
		translate([0,0,0.6]) cylinder(d=14, h=1.6, center=true);
		translate([0,0,0.6]) cylinder(d=6, h=1.6, center=true);
	}
}
