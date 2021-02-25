
LOCAL_PATH := $(call my-dir)/../


include $(CLEAR_VARS)

LOCAL_MODULE    := prboom

LOCAL_CFLAGS :=  -DHAVE_JWZGLES -DGL_DOOM -DENGINE_NAME=\"prboom\" -fsigned-char  -DHAVE_CONFIG_H -Dstricmp=strcasecmp -DPRBOOM_DOOM


LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/idtech1 \
                        $(LOCAL_PATH)/MOBILE  \



 COMMON_SRC = \
    am_map.c \
    doomdef.c \
    doomstat.c \
    dstrings.c \
    d_deh.c \
    d_items.c \
    d_main.c \
    e6y.c \
    f_finale.c \
    f_finale2.c \
    f_wipe.c \
    g_game.c \
    g_overflow.c \
    hu_lib.c \
    hu_stuff.c \
    hu_tracers.c \
    info.c \
    i_capture.c \
    i_pcsound.c \
    lprintf.c \
    md5.c \
    m_argv.c \
    m_bbox.c \
    m_cheat.c \
    m_menu.c \
    m_misc.c \
    m_random.c \
    p_ceilng.c \
    p_checksum.c \
    p_doors.c \
    p_enemy.c \
    p_floor.c \
    p_genlin.c \
    p_inter.c \
    p_lights.c \
    p_map.c \
    p_maputl.c \
    p_mobj.c \
    p_plats.c \
    p_pspr.c \
    p_saveg.c \
    p_setup.c \
    p_sight.c \
    p_spec.c \
    p_switch.c \
    p_telept.c \
    p_tick.c \
    p_user.c \
    r_bsp.c \
    r_data.c \
    r_demo.c \
    r_draw.c \
    r_filter.c \
    r_fps.c \
    r_main.c \
    r_patch.c \
    r_plane.c \
    r_segs.c \
    r_sky.c \
    r_things.c \
    scanner.cpp \
    sc_man.c \
    sounds.c \
    statdump.c \
    st_lib.c \
    st_stuff.c \
    s_advsound.c \
    s_sound.c \
    tables.c \
    umapinfo.cpp \
    version.c \
    v_video.c \
    wi_stuff.c \
    w_wad.c \
    z_bmalloc.c \
    z_zone.c \
    w_mmap.c \
    d_client.c \


MUS2MID_SRC = \
    memio.c \
    mus2mid.c \


SDLDOOM_SOURCES = \
    SDL/i_joy.c \
    SDL/i_main.c \
    SDL/i_network.c \
    SDL/i_sound.c \
    SDL/i_sshot.c \
    SDL/i_system.c \
    SDL/i_video.c \


PCSOUND_SOURCES = \
    PCSOUND/pcsound.c \
    PCSOUND/pcsound_linux.c \
    PCSOUND/pcsound_sdl.c \
    PCSOUND/pcsound_win32.c \


TEXTSCREEN_SOURCES = \
    TEXTSCREEN/txt_sdl.c \


DOOMMUSIC_SOURCES = \
    MUSIC/dbopl.c \
    MUSIC/dumbplayer.c \
    MUSIC/flplayer.c \
    MUSIC/madplayer.c \
    MUSIC/midifile.c \
    MUSIC/opl.c \
    MUSIC/oplplayer.c \
    MUSIC/opl_queue.c \
    MUSIC/portmidiplayer.c \
    MUSIC/vorbisplayer.c \

GL_SRC = \
    gl_clipper.c \
    gl_detail.c \
    gl_drawinfo.c \
    gl_fbo.c \
    gl_gamma.c \
    gl_hires.c \
    gl_hqresize.c \
    gl_light.c \
    gl_main.c \
    gl_map.c \
    gl_missingtexture.c \
    gl_opengl.c \
    gl_preprocess.c \
    gl_shader.c \
    gl_shadow.c \
    gl_sky.c \
    gl_texture.c \
    gl_vertex.c \
    gl_wipe.c \


LOCAL_SRC_FILES =   ../../../../Clibs_OpenTouch/idtech1/android_jni.cpp \
                    ../../../../Clibs_OpenTouch/idtech1/touch_interface.cpp \
                    ./MOBILE/game_interface.c \
                    $(COMMON_SRC) $(MUS2MID_SRC) $(SDLDOOM_SOURCES) $(PCSOUND_SOURCES) $(TEXTSCREEN_SOURCES) $(DOOMMUSIC_SOURCES) $(GL_SRC)

LOCAL_LDLIBS += -llog -lz -lGLESv1_CM

LOCAL_STATIC_LIBRARIES += jwzgles  fluidsynth-static SDL2_net  logwritter

LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer SDL2_image core_shared saffal

include $(BUILD_SHARED_LIBRARY)






