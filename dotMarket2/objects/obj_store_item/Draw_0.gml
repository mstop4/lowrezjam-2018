draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha);
draw_sprite_ext(spr_swatch,0,x+2,y+2,1,1,0,image_blend,image_alpha);

draw_set_alpha(image_alpha);
draw_set_font(global.fnt_pix);
draw_set_colour(c_white);

draw_text(x+10,y+2,string(obj_MCP.dot_price[| my_index]));

draw_set_alpha(1);