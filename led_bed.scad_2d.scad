// May need to adjust location of <lasercut.scad> 
use <lasercut.scad>	;
$fn=60;
projection(cut = false)

lasercutout(thickness = 3.1, 
          points = [[0, 0], [6.9, 0], [6.9, 43.8], [0, 43.8], [0, 0]]
        , simple_tabs = [[180, -1.55, 0], [180, -1.55, 46.9]]
        , finger_joints = [[0, 1, 3], [180, 1, 3], [90, 1, 3]]
        , flat_adjust = [20, -53]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [6.9, 0], [6.9, 43.8], [0, 43.8], [0, 0]]
        , simple_tabs = [[180, -1.55, 0]]
        , finger_joints = [[0, 0, 3], [180, 1, 3], [90, 1, 3]]
        , cutouts = [[2, 2, 10, 40]]
        , flat_adjust = [20, -53]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [6.9, 0], [6.9, 98.8], [0, 98.8], [0, 0]]
        , finger_joints = [[0, 1, 3], [180, 0, 3], [90, 1, 3]]
        , flat_adjust = [-20, -53]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [6.9, 0], [6.9, 98.8], [0, 98.8], [0, 0]]
        , simple_tabs = [[0, -1.55, 98.8]]
        , finger_joints = [[0, 1, 3], [180, 1, 3], [90, 1, 3]]
        , flat_adjust = [40, -160]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [98.8, 0], [98.8, 43.8], [0, 43.8], [0, 0]]
        , finger_joints = [[0, 0, 3], [180, 1, 3], [90, 0, 3], [270, 1, 3]]
        , flat_adjust = [-3.1, -6.2]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [105, 0], [105, 100], [0, 100], [0, 0]]
        , finger_joints = [[0, 1, 4]]
        , flat_adjust = [115, -140]
        ) 

lasercutout(thickness = 3.1, 
          points = [[0, 0], [50, 0], [50, 105], [0, 105], [0, 0]]
        , finger_joints = [[90, 1, 4]]
        ) 

;
