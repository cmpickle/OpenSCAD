// CSG.scad - Basic example of CSG usage

difference() {
    cube(50, center=true);
    cube(48, center=true);
    
    translate([0, -25, 0]) {
        cube([25, 2.02, 48.02], center=true);
    }
}
translate([0, 25, 25]) {
    rotate([90, 0, 0]) {
        linear_extrude(height=50,scale=1,convexity=10) {
        polygon([[-25,0], [25,0], [0,25]]);
        }
    }
}
translate([12.5,0,-12.5])
    translate([0,0,52])
        rotate([0,45,0])
            translate([6.3,0,0])
            cube([52,58,4],center=true);

translate([-12.5,0,-12.5])
    translate([0,0,52])
        rotate([0,-45,0])
            translate([-6.3,0,0])
            cube([52,58,4],center=true);

translate([-12.5,0,25])
    translate([-5,-5,0])
        cube([10,10,27]);
translate([-12.5,0,50])
    translate([-6,-6,0])
        cube([12,12,4]);

echo(version=version());
// Written by Marius Kintel <marius@kintel.net>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
