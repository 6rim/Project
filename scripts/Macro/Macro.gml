function Macro(){
#macro camw (camera_get_view_width(view_camera[0]))   
#macro camh (camera_get_view_height(view_camera[0]))
#macro camx (camera_get_view_x(view_camera[0]))
#macro camy (camera_get_view_y(view_camera[0]))
#macro camcenterx (camx+camw/2)
#macro camcentery (camy+camh/2)

}