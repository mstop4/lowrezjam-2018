draw_surface_ext(paint_surf,1,1,3,3,0,c_white,1);

draw_set_font(global.fnt_pix);
draw_set_colour(c_white);
draw_sprite_ext(spr_swatch,0,1,51,1,1,0,obj_MCP.palette[current_colour],1);
draw_text(8,51,string(obj_MCP.stock[current_colour]));