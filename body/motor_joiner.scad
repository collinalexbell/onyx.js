wing_width = 10;
wing_depth = 4;
wing_seperation_one_side = 5;
wing_seperation = wing_seperation_one_side * 2;

difference() {
	cube([wing_width , wing_seperation + (wing_depth * 2), 1]);
	translate([wing_width/2, wing_depth/2, 0]) {
		translate([wing_width/2-1, 1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([wing_width/2-1, -1, 0]) cylinder(d=0.45, h=3, center=true)
			;
		translate([-wing_width/2+1, -1, 0]) cylinder(d=0.45, h=3, center=true
				);
		translate([-wing_width/2+1, 1, 0]) cylinder(d=0.45, h=3, center=true)
			;
	}
	translate([wing_width/2, wing_seperation + wing_depth + wing_depth/2, 0]) {
		translate([wing_width/2-1, 1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([wing_width/2-1, -1, 0]) cylinder(d=0.45, h=3, center=true)
			;
		translate([-wing_width/2+1, -1, 0]) cylinder(d=0.45, h=3, center=true
				);
		translate([-wing_width/2+1, 1, 0]) cylinder(d=0.45, h=3, center=true)
			;
	}
}
