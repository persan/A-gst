pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with Glib.Object;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gerror_h;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_gstdiscoverer_h is

   --  unsupported macro: GST_TYPE_DISCOVERER_STREAM_INFO (gst_discoverer_stream_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_STREAM_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_STREAM_INFO, GstDiscovererStreamInfo);
   --  arg-macro: function GST_IS_DISCOVERER_STREAM_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_STREAM_INFO);
   --  arg-macro: function gst_discoverer_stream_info_ref (info)
   --    return (GstDiscovererStreamInfo*) gst_mini_object_ref((GstMiniObject*) info);
   --  arg-macro: function gst_discoverer_stream_info_unref (info)
   --    return gst_mini_object_unref((GstMiniObject*) info);
   --  unsupported macro: GST_TYPE_DISCOVERER_CONTAINER_INFO (gst_discoverer_container_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_CONTAINER_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_CONTAINER_INFO, GstDiscovererContainerInfo);
   --  arg-macro: function GST_IS_DISCOVERER_CONTAINER_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_CONTAINER_INFO);
   --  unsupported macro: GST_TYPE_DISCOVERER_AUDIO_INFO (gst_discoverer_audio_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_AUDIO_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_AUDIO_INFO, GstDiscovererAudioInfo);
   --  arg-macro: function GST_IS_DISCOVERER_AUDIO_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_AUDIO_INFO);
   --  unsupported macro: GST_TYPE_DISCOVERER_VIDEO_INFO (gst_discoverer_video_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_VIDEO_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_VIDEO_INFO, GstDiscovererVideoInfo);
   --  arg-macro: function GST_IS_DISCOVERER_VIDEO_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_VIDEO_INFO);
   --  unsupported macro: GST_TYPE_DISCOVERER_SUBTITLE_INFO (gst_discoverer_subtitle_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_SUBTITLE_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_SUBTITLE_INFO, GstDiscovererSubtitleInfo);
   --  arg-macro: function GST_IS_DISCOVERER_SUBTITLE_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_SUBTITLE_INFO);
   --  unsupported macro: GST_TYPE_DISCOVERER_INFO (gst_discoverer_info_get_type ())
   --  arg-macro: function GST_DISCOVERER_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER_INFO, GstDiscovererInfo);
   --  arg-macro: function GST_IS_DISCOVERER_INFO (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER_INFO);
   --  arg-macro: function gst_discoverer_info_unref (info)
   --    return gst_mini_object_unref((GstMiniObject*)info);
   --  arg-macro: function gst_discoverer_info_ref (info)
   --    return gst_mini_object_ref((GstMiniObject*)info);
   --  unsupported macro: GST_TYPE_DISCOVERER (gst_discoverer_get_type())
   --  arg-macro: function GST_DISCOVERER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DISCOVERER,GstDiscoverer);
   --  arg-macro: function GST_DISCOVERER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DISCOVERER,GstDiscovererClass);
   --  arg-macro: function GST_IS_DISCOVERER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DISCOVERER);
   --  arg-macro: function GST_IS_DISCOVERER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DISCOVERER);
   --  skipped empty struct u_GstDiscovererStreamInfo

   --  skipped empty struct GstDiscovererStreamInfo

   subtype GstDiscovererStreamInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:35

   function gst_discoverer_stream_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:36
   pragma Import (C, gst_discoverer_stream_info_get_type, "gst_discoverer_stream_info_get_type");

   function gst_discoverer_stream_info_get_previous (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:62
   pragma Import (C, gst_discoverer_stream_info_get_previous, "gst_discoverer_stream_info_get_previous");

   function gst_discoverer_stream_info_get_next (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:63
   pragma Import (C, gst_discoverer_stream_info_get_next, "gst_discoverer_stream_info_get_next");

   function gst_discoverer_stream_info_get_caps (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:64
   pragma Import (C, gst_discoverer_stream_info_get_caps, "gst_discoverer_stream_info_get_caps");

   function gst_discoverer_stream_info_get_tags (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:65
   pragma Import (C, gst_discoverer_stream_info_get_tags, "gst_discoverer_stream_info_get_tags");

   function gst_discoverer_stream_info_get_misc (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:66
   pragma Import (C, gst_discoverer_stream_info_get_misc, "gst_discoverer_stream_info_get_misc");

   function gst_discoverer_stream_info_get_stream_type_nick (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:67
   pragma Import (C, gst_discoverer_stream_info_get_stream_type_nick, "gst_discoverer_stream_info_get_stream_type_nick");

   --  skipped empty struct u_GstDiscovererContainerInfo

   --  skipped empty struct GstDiscovererContainerInfo

   subtype GstDiscovererContainerInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:83

   function gst_discoverer_container_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:85
   pragma Import (C, gst_discoverer_container_info_get_type, "gst_discoverer_container_info_get_type");

   function gst_discoverer_container_info_get_streams (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:87
   pragma Import (C, gst_discoverer_container_info_get_streams, "gst_discoverer_container_info_get_streams");

   --  skipped empty struct u_GstDiscovererAudioInfo

   --  skipped empty struct GstDiscovererAudioInfo

   subtype GstDiscovererAudioInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:104

   function gst_discoverer_audio_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:106
   pragma Import (C, gst_discoverer_audio_info_get_type, "gst_discoverer_audio_info_get_type");

   function gst_discoverer_audio_info_get_channels (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:108
   pragma Import (C, gst_discoverer_audio_info_get_channels, "gst_discoverer_audio_info_get_channels");

   function gst_discoverer_audio_info_get_sample_rate (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:109
   pragma Import (C, gst_discoverer_audio_info_get_sample_rate, "gst_discoverer_audio_info_get_sample_rate");

   function gst_discoverer_audio_info_get_depth (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:110
   pragma Import (C, gst_discoverer_audio_info_get_depth, "gst_discoverer_audio_info_get_depth");

   function gst_discoverer_audio_info_get_bitrate (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:111
   pragma Import (C, gst_discoverer_audio_info_get_bitrate, "gst_discoverer_audio_info_get_bitrate");

   function gst_discoverer_audio_info_get_max_bitrate (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:112
   pragma Import (C, gst_discoverer_audio_info_get_max_bitrate, "gst_discoverer_audio_info_get_max_bitrate");

   function gst_discoverer_audio_info_get_language (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:113
   pragma Import (C, gst_discoverer_audio_info_get_language, "gst_discoverer_audio_info_get_language");

   --  skipped empty struct u_GstDiscovererVideoInfo

   --  skipped empty struct GstDiscovererVideoInfo

   subtype GstDiscovererVideoInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:129

   function gst_discoverer_video_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:130
   pragma Import (C, gst_discoverer_video_info_get_type, "gst_discoverer_video_info_get_type");

   function gst_discoverer_video_info_get_width (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:132
   pragma Import (C, gst_discoverer_video_info_get_width, "gst_discoverer_video_info_get_width");

   function gst_discoverer_video_info_get_height (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:133
   pragma Import (C, gst_discoverer_video_info_get_height, "gst_discoverer_video_info_get_height");

   function gst_discoverer_video_info_get_depth (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:134
   pragma Import (C, gst_discoverer_video_info_get_depth, "gst_discoverer_video_info_get_depth");

   function gst_discoverer_video_info_get_framerate_num (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:135
   pragma Import (C, gst_discoverer_video_info_get_framerate_num, "gst_discoverer_video_info_get_framerate_num");

   function gst_discoverer_video_info_get_framerate_denom (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:136
   pragma Import (C, gst_discoverer_video_info_get_framerate_denom, "gst_discoverer_video_info_get_framerate_denom");

   function gst_discoverer_video_info_get_par_num (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:137
   pragma Import (C, gst_discoverer_video_info_get_par_num, "gst_discoverer_video_info_get_par_num");

   function gst_discoverer_video_info_get_par_denom (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:138
   pragma Import (C, gst_discoverer_video_info_get_par_denom, "gst_discoverer_video_info_get_par_denom");

   function gst_discoverer_video_info_is_interlaced (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:139
   pragma Import (C, gst_discoverer_video_info_is_interlaced, "gst_discoverer_video_info_is_interlaced");

   function gst_discoverer_video_info_get_bitrate (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:140
   pragma Import (C, gst_discoverer_video_info_get_bitrate, "gst_discoverer_video_info_get_bitrate");

   function gst_discoverer_video_info_get_max_bitrate (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:141
   pragma Import (C, gst_discoverer_video_info_get_max_bitrate, "gst_discoverer_video_info_get_max_bitrate");

   function gst_discoverer_video_info_is_image (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:142
   pragma Import (C, gst_discoverer_video_info_is_image, "gst_discoverer_video_info_is_image");

   --  skipped empty struct u_GstDiscovererSubtitleInfo

   --  skipped empty struct GstDiscovererSubtitleInfo

   subtype GstDiscovererSubtitleInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:159

   function gst_discoverer_subtitle_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:160
   pragma Import (C, gst_discoverer_subtitle_info_get_type, "gst_discoverer_subtitle_info_get_type");

   function gst_discoverer_subtitle_info_get_language (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:162
   pragma Import (C, gst_discoverer_subtitle_info_get_language, "gst_discoverer_subtitle_info_get_language");

   type GstDiscovererResult is
     (GST_DISCOVERER_OK,
      GST_DISCOVERER_URI_INVALID,
      GST_DISCOVERER_ERROR,
      GST_DISCOVERER_TIMEOUT,
      GST_DISCOVERER_BUSY,
      GST_DISCOVERER_MISSING_PLUGINS);
   pragma Convention (C, GstDiscovererResult);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:184

   --  skipped empty struct u_GstDiscovererInfo

   --  skipped empty struct GstDiscovererInfo

   subtype GstDiscovererInfoClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:202

   function gst_discoverer_info_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:203
   pragma Import (C, gst_discoverer_info_get_type, "gst_discoverer_info_get_type");

   function gst_discoverer_info_copy (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:208
   pragma Import (C, gst_discoverer_info_copy, "gst_discoverer_info_copy");

   function gst_discoverer_info_get_uri (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:210
   pragma Import (C, gst_discoverer_info_get_uri, "gst_discoverer_info_get_uri");

   function gst_discoverer_info_get_result (arg1 : System.Address) return GstDiscovererResult;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:211
   pragma Import (C, gst_discoverer_info_get_result, "gst_discoverer_info_get_result");

   function gst_discoverer_info_get_stream_info (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:212
   pragma Import (C, gst_discoverer_info_get_stream_info, "gst_discoverer_info_get_stream_info");

   function gst_discoverer_info_get_stream_list (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:213
   pragma Import (C, gst_discoverer_info_get_stream_list, "gst_discoverer_info_get_stream_list");

   function gst_discoverer_info_get_duration (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:214
   pragma Import (C, gst_discoverer_info_get_duration, "gst_discoverer_info_get_duration");

   function gst_discoverer_info_get_seekable (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:215
   pragma Import (C, gst_discoverer_info_get_seekable, "gst_discoverer_info_get_seekable");

   function gst_discoverer_info_get_misc (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:216
   pragma Import (C, gst_discoverer_info_get_misc, "gst_discoverer_info_get_misc");

   function gst_discoverer_info_get_tags (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:217
   pragma Import (C, gst_discoverer_info_get_tags, "gst_discoverer_info_get_tags");

   function gst_discoverer_info_get_streams (arg1 : System.Address; arg2 : GLIB.GType) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:219
   pragma Import (C, gst_discoverer_info_get_streams, "gst_discoverer_info_get_streams");

   function gst_discoverer_info_get_audio_streams (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:221
   pragma Import (C, gst_discoverer_info_get_audio_streams, "gst_discoverer_info_get_audio_streams");

   function gst_discoverer_info_get_video_streams (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:222
   pragma Import (C, gst_discoverer_info_get_video_streams, "gst_discoverer_info_get_video_streams");

   function gst_discoverer_info_get_subtitle_streams (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:223
   pragma Import (C, gst_discoverer_info_get_subtitle_streams, "gst_discoverer_info_get_subtitle_streams");

   function gst_discoverer_info_get_container_streams (arg1 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:224
   pragma Import (C, gst_discoverer_info_get_container_streams, "gst_discoverer_info_get_container_streams");

   procedure gst_discoverer_stream_info_list_free (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:226
   pragma Import (C, gst_discoverer_stream_info_list_free, "gst_discoverer_stream_info_list_free");

   type GstDiscoverer;
   type anon20312_u_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDiscoverer is u_GstDiscoverer;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:239

   type GstDiscovererClass;
   type anon20314_u_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDiscovererClass is u_GstDiscovererClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:240

   --  skipped empty struct u_GstDiscovererPrivate

   --  skipped empty struct GstDiscovererPrivate

   type GstDiscoverer is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:251
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:253
      u_reserved : anon20312_u_reserved_array;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:255
   end record;
   pragma Convention (C_Pass_By_Copy, GstDiscoverer);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:250

   type GstDiscovererClass is record
      parentclass : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:259
      finished : access procedure  (arg1 : access GstDiscoverer);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:262
      starting : access procedure  (arg1 : access GstDiscoverer);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:263
      discovered : access procedure
           (arg1 : access GstDiscoverer;
            arg2 : System.Address;
            arg3 : access constant GLIB.Error.GError);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:264
      u_reserved : anon20314_u_reserved_array;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:268
   end record;
   pragma Convention (C_Pass_By_Copy, GstDiscovererClass);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:258

   function gst_discoverer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:271
   pragma Import (C, gst_discoverer_get_type, "gst_discoverer_get_type");

   function gst_discoverer_new (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime; arg2 : System.Address) return access GstDiscoverer;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:272
   pragma Import (C, gst_discoverer_new, "gst_discoverer_new");

   procedure gst_discoverer_start (arg1 : access GstDiscoverer);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:275
   pragma Import (C, gst_discoverer_start, "gst_discoverer_start");

   procedure gst_discoverer_stop (arg1 : access GstDiscoverer);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:276
   pragma Import (C, gst_discoverer_stop, "gst_discoverer_stop");

   function gst_discoverer_discover_uri_async (arg1 : access GstDiscoverer; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:277
   pragma Import (C, gst_discoverer_discover_uri_async, "gst_discoverer_discover_uri_async");

   function gst_discoverer_discover_uri
     (arg1 : access GstDiscoverer;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstdiscoverer.h:282
   pragma Import (C, gst_discoverer_discover_uri, "gst_discoverer_discover_uri");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_gstdiscoverer_h;
