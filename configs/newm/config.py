# Python config ----------------------------------------------------------------

from __future__ import annotations
from typing import Callable, Any

import os
import pwd
import time
import logging

from newm.layout import Layout
from pywm import PYWM_MOD_LOGO

logger = logging.getLogger(__name__)



# User config ------------------------------------------------------------------

outputs = [
    { 'name': 'HDMI-A-1', 'pos_x': 0, 'pos_y': 700, 'width': 1366, 'height': 768 },
    { 'name': 'DP-3', 'pos_x': 1366, 'pos_y': 0, 'width': 1920, 'height': 1080 }
]

pywm = {
    'xkb_options': "compose:ralt",
    'natural_scroll': False,
    'enable_xwayland': False,
    'focus_follows_mouse': False,
    'contstrain_popups_to_toplevel': True,
    'encourage_csd': False
}

panels = {
    'bar': {
        'cmd': "waybar"
    },
    'lock': {
        'cmd': 'alacritty -e newm-panel-basic lock'
    },
}

view = {
    'ssd': {
        'enabled': False
    }
}

anim_time = .2



# Keybinds ---------------------------------------------------------------------

mod = "L"

term = "alacritty &"
web = "librewolf &"
mus = "flatpak run com.spotify.Client &"
fm = "thunar &"
vol = "pavucontrol &"
pw = "helvum &"
run = "dmenu_run &"
launcher = "rofi -show drun && wofi --show drun &"


def key_bindings(layout: Layout) -> list[tuple[str, Callable[[],Any]]]:
    return [
        (mod+"-h", lambda: layout.move(-1, 0)),
        (mod+"-n", lambda: layout.move(0, 1)),
        (mod+"-e", lambda: layout.move(0, -1)),
        (mod+"-i", lambda: layout.move(1, 0)),
        (mod+"-j", lambda: layout.basic_scale(1)),
        (mod+"-l", lambda: layout.basic_scale(-1)),
        (mod+"-Tab", lambda: layout.move_in_stack(1)),

        (mod+"-H", lambda: layout.move_focused_view(-1, 0)),
        (mod+"-N", lambda: layout.move_focused_view(0, 1)),
        (mod+"-E", lambda: layout.move_focused_view(0, -1)),
        (mod+"-I", lambda: layout.move_focused_view(1, 0)),

        (mod+"-C-h", lambda: layout.resize_focused_view(-1, 0)),
        (mod+"-C-n", lambda: layout.resize_focused_view(0, 1)),
        (mod+"-C-e", lambda: layout.resize_focused_view(0, -1)),
        (mod+"-C-i", lambda: layout.resize_focused_view(1, 0)),

        (mod+"-return", lambda: os.system(term)),
        (mod+"-t", lambda: os.system(fm)),
        (mod+"-b", lambda: os.system(web)),
        (mod+"-p", lambda: os.system(mus)),
        (mod+"-v", lambda: os.system(vol)),
        (mod+"-x", lambda: os.system(pw)),





        (mod+"-q", lambda: layout.close_focused_view()),
        (mod+"-p", lambda: layout.ensure_locked(dim=True)),
        (mod+"-Q", lambda: layout.terminate()),
        (mod+"-C", lambda: layout.update_config()),

        (mod+"-f", lambda: layout.toggle_fullscreen()),

        (mod+"-", lambda: layout.toggle_overview()),

        ("XF86AudioRaiseVolume", lambda: os.system("pactl set-sink-volume @DEFAULT_SINK@ +10% &")),
        ("XF86AudioLowerVolume", lambda: os.system("pactl set-sink-volume @DEFAULT_SINK@ -10% &")),
        ("XF86AudioMute", lambda: os.system("pactl set-sink-mute @DEFAULT_SINK@ toggle &")),
    ]



# Startup ----------------------------------------------------------------------

def on_startup():
    os.system("\
        /home/edoardo/.azotebg &\
        export MOZ_ENABLE_WAYLAND=1 &\
    ")
