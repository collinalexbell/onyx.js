$fn = 30;
inner_top = 5.6;
wing_depth = 4;
wing_width = 10;


difference() {
	union() {
		cube([1.7,wing_depth,1]);
		color([1,0,0]) translate([1.7,0,0]) cube([0.5,wing_depth,inner_top+2]);
		translate([2.2,0,inner_top+1]) cube([inner_top/2,wing_depth,1]);
		translate([wing_depth + 0.4 + inner_top, 0, 0]) mirror([-1,0,0]) {
			cube([1.7,wing_depth,1]);
			color([1,0,0]) translate([1.7,0,0]) cube([0.5,wing_depth,inner_top+2]);
			translate([2.2,0,inner_top+1]) cube([inner_top/2,wing_depth,1]);
		}
	}
	translate([wing_width/2, wing_depth/2, 0]) {
		cylinder(d=1, h=20, center=true);
		translate([wing_width/2-1, 1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([wing_width/2-1, -1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([-wing_width/2+1, -1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([-wing_width/2+1, 1, 0]) cylinder(d=0.45, h=3, center=true);
	}
}

