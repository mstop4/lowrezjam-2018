draw_sprite_ext(sprite_index,0,x,y,1,1,0,image_blend,image_alpha);

draw_set_alpha(image_alpha);
draw_set_font(global.fnt_pix);
draw_set_colour(c_white);
draw_set_halign(fa_center);

draw_text(x+sprite_width/2,y+8,string(obj_MCP.dot_price[| my_index]));
draw_set_halign(fa_left);

draw_set_alpha(1);