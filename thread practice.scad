include <threads.scad>

diameter = 10;
height = 25;
thread_pitch = 1;
nut_height = 10;
radius = 8;

// difference() {
//     metric_thread(diameter, thread_pitch, height);
//     translate([5, 0 , height/2]) {
//         cube([4, 10, height + .02], center=true);
//     }
//     translate([-5, 0 , height/2]) {
//         cube([4, 10, height + .02], center=true);
//     }
// }

intersection() {
    metric_thread(diameter, thread_pitch, height);
    translate([0, 0 , height/2]) {
        cube([6, 10, height + .02], center=true);
    }
};

difference() {
    translate([25, 0, nut_height/2]) {
        cylinder(h=nut_height, r=radius, center=true);
    };
    translate([25, 0, -.01]) {
        metric_thread(diameter, thread_pitch, nut_height + .02, internal=true);
    };
}

difference(){
cube([32,32,16]);
    translate([0,0,-1]) cylinder(h=18,  r=10.4,$fn=100);
    translate([32,0,-1]) cylinder(h=18,  r=10.4,$fn=100);
    translate([32,32,-1]) cylinder(h=18,  r=10.4,$fn=100);
    translate([0,32,-1]) cylinder(h=18,  r=10.4,$fn=100);
}
translate([15.9,1,0]) cylinder(h=16, r=5.8,$fn=100);
translate([15.9,31,0]) cylinder(h=16, r=5.8,$fn=100);
translate([1,15.9,0]) cylinder(h=16, r=5.8,$fn=100);
translate([31,15.9,0]) cylinder(h=16, r=5.8,$fn=100);

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
