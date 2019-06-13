include <lasercut.scad>; 

thickness = 3.1;
head_thickness = 100;
led_x = 105;
led_y = 50;
led_z = 10;

module ledBox()
{
    color("Gold", 0.5) {
        union() {
            lasercutoutBox(thickness = thickness, x=led_z, y=led_y, z=led_x, 
                sides=5, num_fingers=3,
                circles_remove = [
                    [[3, led_z+thickness, led_y/5]],
                ],
                cutouts_a = [
                    [],
                    [[2,2,10,40]],
                ]
            );
            translate([0,led_y,led_x]) rotate([0,90,0]) 
                lasercutoutSquare(thickness=thickness, x=led_x, y=head_thickness,
                    finger_joints = [
                        [UP, 1, 4]
                    ]
            );

        }
        
        translate([thickness,led_y+head_thickness+thickness,0]) rotate([90,0,0]) 
            lasercutoutSquare(thickness=thickness, x=50, y=led_x,
                finger_joints = [
                    [LEFT, 1, 4]
                ]
        );
    }
}
translate([0,0,0]) ledBox();
