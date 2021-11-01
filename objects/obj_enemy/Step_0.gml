if (hits < 0) instance_destroy();

// z = startz + 96 * sin(life / 100);
life++;

if (first) exit;

xspd += sign(obj_camera.x - x) / 5;
yspd += sign(obj_camera.y - y) / 5;

x += xspd;
y += yspd;
z += zspd;

xspd *= 0.99;
yspd *= 0.99;
zspd += 0.7;

if (z > 0) {
	z = 0;
	zspd *= -1;
}