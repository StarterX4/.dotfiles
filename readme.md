## Steam Source games configs
You can put the *config.cfg* in your `[GAMEDIR]/[MOD]/cfg/`, or `[STEAMDIR]/userdata/[USERID]/[APPID]/remote/cfg/` if your game uses Steam Cloud.
The rest of the configs MUST be placed only in the first dir, since Steam Cloud rejects strange configs.

## Launch options
L4D2: `gamemoderun SDL_AUDIODRIVER=pipewire SDL_DYNAMIC_API=/usr/lib32/libSDL2-2.0.so.0 DRI_PRIME=1 LD_PRELOAD=/usr/lib32/libSDL2-2.0.so.0:/usr/lib32/libgcrypt.so.11:/home/starterx4/.steam/steam/ubuntu12_32/gameoverlayrenderer.so LC_ALL=pl_PL.UTF-8 LANG=pl_PL %command% -novid -nojoy -high +exec autoexec.cfg -tickrate 128 -threads 12 +cl_forcepreload 1 +sv_consistency 0 -vulkan`

TF2: `DRI_PRIME=1 SDL_AUDIODRIVER=pipewire SDL_DYNAMIC_API=/usr/lib32/libSDL2-2.0.so.0 LD_PRELOAD=/home/starterx4/.steam/steam/ubuntu12_32/gameoverlayrenderer.so:/usr/lib32/libSDL2-2.0.so.0 gamemoderun %command% -nojoy -novid -high -noipx +mat_picmip -10`

OpenFortress: `DRI_PRIME=1 SDL_AUDIODRIVER=pulseaudio LD_PRELOAD=/home/starterx4/.steam/steam/ubuntu12_32/gameoverlayrenderer.so:/usr/lib32/libSDL2-2.0.so.0:'/usr/$LIB/libstdc++.so.6' %command% -nojoy -novid -high -noipx`

CSGO: `gamemoderun DRI_PRIME=1 LD_PRELOAD=/usr/lib/libSDL2-2.0.so.0:/usr/lib/libgcrypt.so.11:/usr/lib/libfreetype2.so:/home/starterx4/.steam/steam/ubuntu12_64/gameoverlayrenderer.so %command% -novid -nojoy -high +exec autoexec.cfg -tickrate 128 -processheap +fps_max 300 +fps_max_menu 60 -threads 12 -vulkan`
