var mat = matrix_build(x, y, z, xa, ya, za, scale, scale, scale);

matrix_set(matrix_world, mat);
vertex_submit(me, pr_trianglelist, -1); //tex);
matrix_set(matrix_world, matrix_build_identity());

mat = matrix_build(x, y, -1, 0, 0, 0, 8, 8, 1);

matrix_set(matrix_world, mat);
vertex_submit(shadow, pr_trianglelist, sprite_get_texture(spr_cubeshadow, 0));
matrix_set(matrix_world, matrix_build_identity());

xa = xa + 1 % 360;
ya = ya + 1 % 360;
za = za + 1 % 360;