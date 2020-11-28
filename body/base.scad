$fn=30;
thickness = 1;
motor_face = 5.5;
motor_length = 11.3;

wing_width = 10;
wing_depth = 4;

difference() {
	union() {
		cube([motor_face, motor_length, thickness]);
		translate([0, motor_length, 0]) cube([motor_face,1, motor_face + thickness]);
		translate([-wing_width/2 + motor_face/2, 5, 0]) cube([wing_width, wing_depth, thickness]);
	}

	translate([motor_face/2, 5+wing_depth/2, 0]) {
		translate([wing_width/2-1, 1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([wing_width/2-1, -1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([-wing_width/2+1, -1, 0]) cylinder(d=0.45, h=3, center=true);
		translate([-wing_width/2+1, 1, 0]) cylinder(d=0.45, h=3, center=true);
	}
	translate([motor_face/2, motor_length, thickness + motor_face/2]){
		rotate([90, 0, 0]) {
			union() {
				translate([4.7/2,4.7/2,0]) cylinder(d=0.7, h=4, center=true);
				translate([-4.7/2,4.7/2,0]) cylinder(d=0.7, h=4, center=true);
				translate([-4.7/2,-4.7/2,0]) cylinder(d=0.7, h=4, center=true);
				translate([4.7/2,-4.7/2,0]) cylinder(d=0.7, h=4, center=true);
				cylinder(d=4.5, h=4, center=true);
			}
		}
	}
}
