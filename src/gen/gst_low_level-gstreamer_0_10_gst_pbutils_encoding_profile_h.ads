pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_profile_h is

   --  unsupported macro: GST_TYPE_ENCODING_PROFILE (gst_encoding_profile_get_type ())
   --  arg-macro: function GST_ENCODING_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_PROFILE, GstEncodingProfile);
   --  arg-macro: function GST_IS_ENCODING_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_PROFILE);
   --  unsupported macro: GST_TYPE_ENCODING_CONTAINER_PROFILE (gst_encoding_container_profile_get_type ())
   --  arg-macro: function GST_ENCODING_CONTAINER_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_CONTAINER_PROFILE, GstEncodingContainerProfile);
   --  arg-macro: function GST_IS_ENCODING_CONTAINER_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_CONTAINER_PROFILE);
   --  unsupported macro: GST_TYPE_ENCODING_VIDEO_PROFILE (gst_encoding_video_profile_get_type ())
   --  arg-macro: function GST_ENCODING_VIDEO_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_VIDEO_PROFILE, GstEncodingVideoProfile);
   --  arg-macro: function GST_IS_ENCODING_VIDEO_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_VIDEO_PROFILE);
   --  unsupported macro: GST_TYPE_ENCODING_AUDIO_PROFILE (gst_encoding_audio_profile_get_type ())
   --  arg-macro: function GST_ENCODING_AUDIO_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_AUDIO_PROFILE, GstEncodingAudioProfile);
   --  arg-macro: function GST_IS_ENCODING_AUDIO_PROFILE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_AUDIO_PROFILE);
   --  arg-macro: function gst_encoding_profile_unref (profile)
   --    return gst_mini_object_unref ((GstMiniObject*) profile);
   --  arg-macro: function gst_encoding_profile_ref (profile)
   --    return gst_mini_object_ref ((GstMiniObject*) profile);
   --  skipped empty struct u_GstEncodingProfile

   --  skipped empty struct GstEncodingProfile

   subtype GstEncodingProfileClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:47

   function gst_encoding_profile_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:48
   pragma Import (C, gst_encoding_profile_get_type, "gst_encoding_profile_get_type");

   --  skipped empty struct u_GstEncodingContainerProfile

   --  skipped empty struct GstEncodingContainerProfile

   subtype GstEncodingContainerProfileClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:66

   function gst_encoding_container_profile_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:67
   pragma Import (C, gst_encoding_container_profile_get_type, "gst_encoding_container_profile_get_type");

   --  skipped empty struct u_GstEncodingVideoProfile

   --  skipped empty struct GstEncodingVideoProfile

   subtype GstEncodingVideoProfileClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:85

   function gst_encoding_video_profile_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:86
   pragma Import (C, gst_encoding_video_profile_get_type, "gst_encoding_video_profile_get_type");

   --  skipped empty struct u_GstEncodingAudioProfile

   --  skipped empty struct GstEncodingAudioProfile

   subtype GstEncodingAudioProfileClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:104

   function gst_encoding_audio_profile_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:105
   pragma Import (C, gst_encoding_audio_profile_get_type, "gst_encoding_audio_profile_get_type");

   function gst_encoding_profile_get_name (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:131
   pragma Import (C, gst_encoding_profile_get_name, "gst_encoding_profile_get_name");

   function gst_encoding_profile_get_description (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:132
   pragma Import (C, gst_encoding_profile_get_description, "gst_encoding_profile_get_description");

   function gst_encoding_profile_get_format (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:133
   pragma Import (C, gst_encoding_profile_get_format, "gst_encoding_profile_get_format");

   function gst_encoding_profile_get_preset (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:134
   pragma Import (C, gst_encoding_profile_get_preset, "gst_encoding_profile_get_preset");

   function gst_encoding_profile_get_presence (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:135
   pragma Import (C, gst_encoding_profile_get_presence, "gst_encoding_profile_get_presence");

   function gst_encoding_profile_get_restriction (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:136
   pragma Import (C, gst_encoding_profile_get_restriction, "gst_encoding_profile_get_restriction");

   procedure gst_encoding_profile_set_name (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:138
   pragma Import (C, gst_encoding_profile_set_name, "gst_encoding_profile_set_name");

   procedure gst_encoding_profile_set_description (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:139
   pragma Import (C, gst_encoding_profile_set_description, "gst_encoding_profile_set_description");

   procedure gst_encoding_profile_set_format (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:140
   pragma Import (C, gst_encoding_profile_set_format, "gst_encoding_profile_set_format");

   procedure gst_encoding_profile_set_preset (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:141
   pragma Import (C, gst_encoding_profile_set_preset, "gst_encoding_profile_set_preset");

   procedure gst_encoding_profile_set_restriction (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:142
   pragma Import (C, gst_encoding_profile_set_restriction, "gst_encoding_profile_set_restriction");

   procedure gst_encoding_profile_set_presence (arg1 : System.Address; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:143
   pragma Import (C, gst_encoding_profile_set_presence, "gst_encoding_profile_set_presence");

   function gst_encoding_profile_is_equal (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:145
   pragma Import (C, gst_encoding_profile_is_equal, "gst_encoding_profile_is_equal");

   function gst_encoding_profile_get_input_caps (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:147
   pragma Import (C, gst_encoding_profile_get_input_caps, "gst_encoding_profile_get_input_caps");

   function gst_encoding_profile_get_type_nick (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:149
   pragma Import (C, gst_encoding_profile_get_type_nick, "gst_encoding_profile_get_type_nick");

   function gst_encoding_profile_find
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:151
   pragma Import (C, gst_encoding_profile_find, "gst_encoding_profile_find");

   function gst_encoding_container_profile_add_profile (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:156
   pragma Import (C, gst_encoding_container_profile_add_profile, "gst_encoding_container_profile_add_profile");

   function gst_encoding_container_profile_contains_profile (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:158
   pragma Import (C, gst_encoding_container_profile_contains_profile, "gst_encoding_container_profile_contains_profile");

   function gst_encoding_container_profile_get_profiles (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:160
   pragma Import (C, gst_encoding_container_profile_get_profiles, "gst_encoding_container_profile_get_profiles");

   function gst_encoding_container_profile_new
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg4 : access GLIB.gchar) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:163
   pragma Import (C, gst_encoding_container_profile_new, "gst_encoding_container_profile_new");

   function gst_encoding_video_profile_new
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg4 : GLIB.guint) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:170
   pragma Import (C, gst_encoding_video_profile_new, "gst_encoding_video_profile_new");

   function gst_encoding_audio_profile_new
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg4 : GLIB.guint) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:174
   pragma Import (C, gst_encoding_audio_profile_new, "gst_encoding_audio_profile_new");

   function gst_encoding_video_profile_get_pass (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:179
   pragma Import (C, gst_encoding_video_profile_get_pass, "gst_encoding_video_profile_get_pass");

   function gst_encoding_video_profile_get_variableframerate (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:180
   pragma Import (C, gst_encoding_video_profile_get_variableframerate, "gst_encoding_video_profile_get_variableframerate");

   procedure gst_encoding_video_profile_set_pass (arg1 : System.Address; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:182
   pragma Import (C, gst_encoding_video_profile_set_pass, "gst_encoding_video_profile_set_pass");

   procedure gst_encoding_video_profile_set_variableframerate (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:184
   pragma Import (C, gst_encoding_video_profile_set_variableframerate, "gst_encoding_video_profile_set_variableframerate");

   function gst_encoding_profile_from_discoverer (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-profile.h:187
   pragma Import (C, gst_encoding_profile_from_discoverer, "gst_encoding_profile_from_discoverer");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_profile_h;
