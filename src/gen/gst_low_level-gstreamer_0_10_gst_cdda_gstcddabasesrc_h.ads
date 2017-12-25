pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_cdda_gstcddabasesrc_h is

   --  unsupported macro: GST_TYPE_CDDA_BASE_SRC (gst_cdda_base_src_get_type())
   --  arg-macro: function GST_CDDA_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrc);
   --  arg-macro: function GST_CDDA_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrcClass);
   --  arg-macro: function GST_IS_CDDA_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj), GST_TYPE_CDDA_BASE_SRC);
   --  arg-macro: function GST_IS_CDDA_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass), GST_TYPE_CDDA_BASE_SRC);
   --  arg-macro: function GST_CDDA_BASE_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrcClass);
   --  unsupported macro: GST_TYPE_CDDA_BASE_SRC_MODE (gst_cdda_base_src_mode_get_type ())
   type GstCddaBaseSrc;
   type anon17975_mb_discid_array is array (0 .. 31) of aliased GLIB.gchar;
   type anon17975_u_gst_reserved1_array is array (0 .. 1) of aliased GLIB.guint;
   type anon17975_u_gst_reserved2_array is array (0 .. 1) of System.Address;
   --subtype GstCddaBaseSrc is u_GstCddaBaseSrc;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:40

   type GstCddaBaseSrcClass;
   type anon17977_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCddaBaseSrcClass is u_GstCddaBaseSrcClass;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:41

   type GstCddaBaseSrcTrack;
   type anon17979_u_gst_reserved1_array is array (0 .. 1) of aliased GLIB.guint;
   type anon17979_u_gst_reserved2_array is array (0 .. 1) of System.Address;
   --subtype GstCddaBaseSrcTrack is u_GstCddaBaseSrcTrack;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:42

   type GstCddaBaseSrcMode is 
     (GST_CDDA_BASE_SRC_MODE_NORMAL,
      GST_CDDA_BASE_SRC_MODE_CONTINUOUS);
   pragma Convention (C, GstCddaBaseSrcMode);  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:55

   type GstCddaBaseSrcTrack is record
      is_audio : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:70
      num : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:71
      start : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:72
      c_end : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:73
      tags : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:74
      u_gst_reserved1 : aliased anon17979_u_gst_reserved1_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:77
      u_gst_reserved2 : anon17979_u_gst_reserved2_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrcTrack);  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:69

   type GstCddaBaseSrc is record
      pushsrc : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrc;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:82
      tags : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:85
      mode : aliased GstCddaBaseSrcMode;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:88
      device : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:90
      num_tracks : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:92
      num_all_tracks : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:93
      tracks : access GstCddaBaseSrcTrack;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:94
      cur_track : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:96
      prev_track : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:97
      cur_sector : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:98
      seek_sector : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:99
      uri_track : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:101
      uri : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:102
      discid : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:104
      mb_discid : aliased anon17975_mb_discid_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:105
      index : access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:107
      index_id : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:108
      toc_offset : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:110
      toc_bias : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:111
      u_gst_reserved1 : aliased anon17975_u_gst_reserved1_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:114
      u_gst_reserved2 : anon17975_u_gst_reserved2_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrc);  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:81

   type GstCddaBaseSrcClass is record
      pushsrc_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrcClass;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:130
      open : access function  (arg1 : access GstCddaBaseSrc; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:133
      close : access procedure  (arg1 : access GstCddaBaseSrc);  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:134
      read_sector : access function  (arg1 : access GstCddaBaseSrc; arg2 : GLIB.gint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:137
      get_default_device : access function  (arg1 : access GstCddaBaseSrc) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:140
      probe_devices : access function  (arg1 : access GstCddaBaseSrc) return System.Address;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:143
      u_gst_reserved : anon17977_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrcClass);  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:129

   function gst_cdda_base_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:149
   pragma Import (C, gst_cdda_base_src_get_type, "gst_cdda_base_src_get_type");

   function gst_cdda_base_src_mode_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:150
   pragma Import (C, gst_cdda_base_src_mode_get_type, "gst_cdda_base_src_mode_get_type");

   function gst_cdda_base_src_add_track (arg1 : access GstCddaBaseSrc; arg2 : access GstCddaBaseSrcTrack) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/cdda/gstcddabasesrc.h:152
   pragma Import (C, gst_cdda_base_src_add_track, "gst_cdda_base_src_add_track");

end GST_Low_Level.gstreamer_0_10_gst_cdda_gstcddabasesrc_h;
