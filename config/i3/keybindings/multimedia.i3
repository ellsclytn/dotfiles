######################
#
# Media/Special Keys
#
######################

# Use brightness keys
bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -inc 5
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -dec 5

# Use volume keys
bindsym XF86AudioRaiseVolume exec --no-startup-id "pactl set-sink-volume {{with env.Getenv "LAPTOP" "0"}}{{if eq . "1" -}}3{{- else -}}0{{- end}}{{end}} +5%"
bindsym XF86AudioLowerVolume exec --no-startup-id "pactl set-sink-volume {{with env.Getenv "LAPTOP" "0"}}{{if eq . "1" -}}3{{- else -}}0{{- end}}{{end}} -5%"
bindsym XF86AudioMute exec --no-startup-id "pactl set-sink-mute {{with env.Getenv "LAPTOP" "0"}}{{if eq . "1" -}}3{{- else -}}0{{- end}}{{end}} toggle"
bindsym XF86AudioMicMute exec --no-startup-id "pactl set-source-mute 1 toggle"

# Media player controls, requires playerctl
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous
