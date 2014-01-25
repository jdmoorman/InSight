// from gamemaker forums:
// http://gmc.yoyogames.com/index.php?showtopic=515372

// ihato
// draw_volume_slider(x,y,wid,heig,hv,recw,colr,cols,inv)
// x: position on x axis
// y: position on y axis
// wid: width of the backline, and the limit when hv is 0
// heig: height of the backline, and the limit when hv is 1
// recw: half-size of the slider
// hv: it can be 1 or 0. If its 0, then the slider is horisontal. Else, its vertical
// colr: the backline color
// cols: the slider color
// inv: inverted return. If its 0 then for example when hv is 0, the bottom is 0 precent 
//      and the top is 100. Otherwise, top is 0, and bottom is 100
//
// returns: precentage in % (0-100)
var xx,yy,w,hv,recw,colr,cols,prevc,inv;
if (variable_local_exists("acttt") ) {if not (acttt==1) acttt=0} else {acttt=0}
xx=argument0
yy=argument1
w=argument2
h=argument3
hv=max(0,sign(argument4))
recw=argument5
colr=argument6
cols=argument7
inv=max(0,sign(argument8))
prevc=draw_get_color()
if not (variable_local_exists("xxxon")) xxxon=xx
if not (variable_local_exists("yyyon")) yyyon=yy
switch (hv)
begin
case 0:
    draw_set_color(colr)
    draw_rectangle (xx-w/2,yy-h/2,xx+w/2,yy+h/2,0)
    draw_set_color(c_black)
    draw_rectangle (xx-w/2,yy-h/2,xx+w/2,yy+h/2,1)
    draw_set_color(cols)
    draw_rectangle (xxxon-recw,yyyon-recw,xxxon+recw,yyyon+recw,0)
    draw_set_color(c_black)
    draw_rectangle (xxxon-recw,yyyon-recw,xxxon+recw,yyyon+recw,1)
    
    if (mouse_x>xxxon-recw && mouse_x<xxxon+recw && mouse_y>yyyon-recw && mouse_y<yyyon+recw)
    and (mouse_check_button(mb_left)) then {acttt=1}
    if (mouse_check_button_released(mb_left)) then {acttt=0}
    if (acttt)
    then {xxxon=min(xx+w/2,max(xx-w/2, mouse_x) )}
    if (!inv) return point_distance(xx-w/2,yy,xxxon,yy)/(w/100)
    else return point_distance(xx+w/2,yy,xxxon,yy)/(w/100)
    break

case 1:

    draw_set_color(colr)
    draw_rectangle(xx-w/2,yy-h/2,xx+w/2,yy+h/2,0)
    draw_set_color(c_black)
    draw_rectangle(xx-w/2,yy-h/2,xx+w/2,yy+h/2,1)
    draw_set_color(cols)
    draw_rectangle (xxxon-recw,yyyon-recw,xxxon+recw,yyyon+recw,0)
    draw_set_color(c_black)
    draw_rectangle (xxxon-recw,yyyon-recw,xxxon+recw,yyyon+recw,1)
    if (mouse_x>xxxon-recw && mouse_x<xxxon+recw && mouse_y>yyyon-recw && mouse_y<yyyon+recw)
    and (mouse_check_button(mb_left)) then {acttt=1}
    if (mouse_check_button_released(mb_left)) then {acttt=0}
    if (acttt)
    then {yyyon=min(yy+h/2,max(yy-h/2, mouse_y) )}
    if (!inv) return point_distance(xx,yyyon,xx,yy+h/2)/(h/100)
    else return point_distance(xx,yyyon,xx,yy-h/2)/(h/100)
    break
end
