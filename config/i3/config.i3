set $mod Mod1

new_window pixel 1
new_float normal

hide_edge_borders smart_no_gaps

bindsym $mod+u border none
bindsym $mod+y border pixel 1
bindsym $mod+n border normal

font xft:Fira Code 11

floating_modifier $mod

bindsym $mod+Return exec i3-sensible-terminal

# Window kill command
bindsym $mod+Shift+q kill

# start program launcher
bindsym $mod+space exec --no-startup-id rofi -show combi
bindsym $mod+period exec rofi -show emoji -modi emoji
bindsym $mod+Shift+period exec rofi-kaomoji
bindsym $mod+Shift+w exec rofi -show power-menu -modi "power-menu:rofi-power-menu --no-symbols"

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# workspace back and forth (with/without active container)
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

# split orientation
bindsym $mod+semicolon split h;exec notify-send 'tile horizontally'
bindsym $mod+v split v;exec notify-send 'tile vertically'
bindsym $mod+q split toggle

# toggle fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+d focus mode_toggle

# toggle sticky
bindsym $mod+Shift+s sticky toggle

# focus the parent container
bindsym $mod+a focus parent

# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym $mod+minus scratchpad show

# navigate workspaces next / previous
bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev

# workspaces
set $ws1 1
set $ws2 2
set $ws3 3
set $ws4 4
set $ws5 5
set $ws6 6
set $ws7 7
set $ws8 8

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8

# Move to workspace with focused container
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8

# Open specific applications in floating mode
for_window [title="i3_help"] floating enable sticky enable border normal

# switch to workspace with urgent window automatically
for_window [urgent=latest] focus

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# Set shut down, restart and locking features
bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
  bindsym l exec --no-startup-id i3exit lock, mode "default"
  bindsym s exec --no-startup-id i3exit suspend, mode "default"
  bindsym u exec --no-startup-id i3exit switch_user, mode "default"
  bindsym e exec --no-startup-id i3exit logout, mode "default"
  bindsym h exec --no-startup-id i3exit hibernate, mode "default"
  bindsym r exec --no-startup-id i3exit reboot, mode "default"
  bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

  # exit system mode: "Enter" or "Escape"
  bindsym Return mode "default"
  bindsym Escape mode "default"
}

# Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"
mode "resize" {
  # These bindings trigger as soon as you enter the resize mode
  # Pressing left will shrink the window’s width.
  # Pressing right will grow the window’s width.
  # Pressing up will shrink the window’s height.
  # Pressing down will grow the window’s height.
  bindsym h resize shrink width 5 px or 5 ppt
  bindsym j resize grow height 5 px or 5 ppt
  bindsym k resize shrink height 5 px or 5 ppt
  bindsym l resize grow width 5 px or 5 ppt

  # same bindings, but for the arrow keys
  bindsym Left resize shrink width 10 px or 10 ppt
  bindsym Down resize grow height 10 px or 10 ppt
  bindsym Up resize shrink height 10 px or 10 ppt
  bindsym Right resize grow width 10 px or 10 ppt

  # exit resize mode: Enter or Escape
  bindsym Return mode "default"
  bindsym Escape mode "default"
}

# Gaps
gaps inner 10
gaps outer -4

smart_gaps on

# Press $mod+Shift+g to enter the gap mode. Choose o or i for modifying outer/inner gaps. Press one of + / - (in-/decrement for current workspace) or 0 (remove gaps for current workspace). If you also press Shift with these keys, the change will be global for all workspaces.
set $mode_gaps Gaps: (o) outer, (i) inner
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
  bindsym o      mode "$mode_gaps_outer"
  bindsym i      mode "$mode_gaps_inner"
  bindsym Return mode "default"
  bindsym Escape mode "default"
}

mode "$mode_gaps_inner" {
  bindsym plus  gaps inner current plus 5
  bindsym minus gaps inner current minus 5
  bindsym 0     gaps inner current set 0

  bindsym Shift+plus  gaps inner all plus 5
  bindsym Shift+minus gaps inner all minus 5
  bindsym Shift+0     gaps inner all set 0

  bindsym Return mode "default"
  bindsym Escape mode "default"
}

mode "$mode_gaps_outer" {
  bindsym plus  gaps outer current plus 5
  bindsym minus gaps outer current minus 6
  bindsym 0     gaps outer current set 0

  bindsym Shift+plus  gaps outer all plus 5
  bindsym Shift+minus gaps outer all minus 5
  bindsym Shift+0     gaps outer all set 0

  bindsym Return mode "default"
  bindsym Escape mode "default"
}
