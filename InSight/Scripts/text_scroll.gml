draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(font);
draw_text(room_width / 2, y, credits);
if ( y < -string_height(credits) ) y = view_yport[0];
