var mat = matrix_build(x, y, -1, 0, 0, 0, 8 * (z / (2 * startz)), 8 * (z / (2 * startz)), 1);

matrix_set(matrix_world, mat);
vertex_submit(shadow, pr_trianglelist, sprite_get_texture(spr_landing, 0));
matrix_set(matrix_world, matrix_build_identity());