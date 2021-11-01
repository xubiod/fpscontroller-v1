me = vertex_create_buffer();
setup_block(me, global.vf);
vertex_freeze(me);

shadow = vertex_create_buffer();
setup_plane(shadow, global.vft, spr_cubeshadow);
vertex_freeze(shadow);

scale = random_range(3.0, 9.5);
hits = 2; 

z = -irandom_range(2, 16) * 16;
startz = z;

life = 0;

xa = irandom(360);
ya = irandom(360);
za = irandom(360);

first = false;

xspd = 0;
yspd = 0;
zspd = 0;