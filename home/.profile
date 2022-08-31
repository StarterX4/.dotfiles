#
# ~/.xprofile
#
#

# if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
#     eval "$(dbus-launch --sh-syntax --exit-with-session)"
# fi

# Environment variables
#

[[ -f ~/.extend.profile ]] && . ~/.extend.profile

export WINE_RT=15
export WINE_SRV_RT=10
export STAGING_RT_PRIORITY_BASE=15
export STAGING_RT_PRIORITY_SERVER=10
export STEAM_RUNTIME=0
#export STEAM_RUNTIME_PREFER_HOST_LIBRARIES=1
#export QT_QPA_PLATFORMTHEME=qt5ct
export GDK_BACKEND=wayland
#export GSK_RENDERING_MODE=full-redraw #full redraw every frame
#export QT_QPA_PLATFORM=wayland-egl
#export SDL_VIDEODRIVER=wayland
#export CLUTTER_BACKEND=wayland #nie działa, domyślnie używa GDK
#export ECORE_EVAS_ENGINE=wayland-egl
#export ELM_DISPLAY=wl
#export ELM_ACCEL=opengl
#export LIBGL_DEBUG=verbose
#export XDG_SESSION_TYPE=wayland
#export KSCREEN_BACKEND=fake #KScreen has no Wayland backend, calls into KScreen will fail (workaround to make it at least not crash)
#export SAL_USE_VCLPLUGIN=gtk3 #globalmenu Libreoffice
export MOZ_ENABLE_WAYLAND=1
export WLR_RENDERER=vulkan
export VAAPI_MPEG4_ENABLED=true
export GST_VAAPI_ALL_DRIVERS=1
export POL_IgnoreWineErrors=true
export GTK_USE_PORTAL=1
#export MESA_SHADER_CACHE_DIR=$HOME/.cache/mesa_shader_cache
#export QT_LOGGING_RULES="kwin_*.debug=true"
