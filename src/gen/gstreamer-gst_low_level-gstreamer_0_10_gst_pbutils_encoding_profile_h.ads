pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_profile_h is

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
  -- GStreamer encoding profiles library
  -- * Copyright (C) 2009-2010 Edward Hervey <edward.hervey@collabora.co.uk>
  -- *           (C) 2009-2010 Nokia Corporation
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstEncodingProfile:
  -- *
  -- * The opaque base class object for all encoding profiles. This contains generic
  -- * information like name, description, format and preset.
  -- *
  -- * Since: 0.10.32
  --  

   --  skipped empty struct u_GstEncodingProfile

   --  skipped empty struct GstEncodingProfile

   subtype GstEncodingProfileClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/encoding-profile.h:47

   function gst_encoding_profile_get_type return GLIB.GType;  -- gst/pbutils/encoding-profile.h:48
   pragma Import (C, gst_encoding_profile_get_type, "gst_encoding_profile_get_type");

  --*
  -- * GstEncodingContainerProfile:
  -- *
  -- * Encoding profiles for containers. Keeps track of a list of #GstEncodingProfile
  -- *
  -- * Since: 0.10.32
  --  

   --  skipped empty struct u_GstEncodingContainerProfile

   --  skipped empty struct GstEncodingContainerProfile

   subtype GstEncodingContainerProfileClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/encoding-profile.h:66

   function gst_encoding_container_profile_get_type return GLIB.GType;  -- gst/pbutils/encoding-profile.h:67
   pragma Import (C, gst_encoding_container_profile_get_type, "gst_encoding_container_profile_get_type");

  --*
  -- * GstEncodingVideoProfile:
  -- *
  -- * Variant of #GstEncodingProfile for video streams, allows specifying the @pass.
  -- *
  -- * Since: 0.10.32
  --  

   --  skipped empty struct u_GstEncodingVideoProfile

   --  skipped empty struct GstEncodingVideoProfile

   subtype GstEncodingVideoProfileClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/encoding-profile.h:85

   function gst_encoding_video_profile_get_type return GLIB.GType;  -- gst/pbutils/encoding-profile.h:86
   pragma Import (C, gst_encoding_video_profile_get_type, "gst_encoding_video_profile_get_type");

  --*
  -- * GstEncodingAudioProfile:
  -- *
  -- * Variant of #GstEncodingProfile for audio streams.
  -- *
  -- * Since: 0.10.32
  --  

   --  skipped empty struct u_GstEncodingAudioProfile

   --  skipped empty struct GstEncodingAudioProfile

   subtype GstEncodingAudioProfileClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/encoding-profile.h:104

   function gst_encoding_audio_profile_get_type return GLIB.GType;  -- gst/pbutils/encoding-profile.h:105
   pragma Import (C, gst_encoding_audio_profile_get_type, "gst_encoding_audio_profile_get_type");

  -- GstEncodingProfile API  
  --*
  -- * gst_encoding_profile_unref:
  -- * @profile: a #GstEncodingProfile
  -- *
  -- * Decreases the reference count of the @profile, possibly freeing the @profile.
  -- *
  -- * Since: 0.10.32
  --  

  --*
  -- * gst_encoding_profile_ref:
  -- * @profile: a #GstEncodingProfile
  -- *
  -- * Increases the reference count of the @profile.
  -- *
  -- * Since: 0.10.32
  --  

   function gst_encoding_profile_get_name (profile : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-profile.h:131
   pragma Import (C, gst_encoding_profile_get_name, "gst_encoding_profile_get_name");

   function gst_encoding_profile_get_description (profile : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-profile.h:132
   pragma Import (C, gst_encoding_profile_get_description, "gst_encoding_profile_get_description");

   function gst_encoding_profile_get_format (profile : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/pbutils/encoding-profile.h:133
   pragma Import (C, gst_encoding_profile_get_format, "gst_encoding_profile_get_format");

   function gst_encoding_profile_get_preset (profile : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-profile.h:134
   pragma Import (C, gst_encoding_profile_get_preset, "gst_encoding_profile_get_preset");

   function gst_encoding_profile_get_presence (profile : System.Address) return GLIB.guint;  -- gst/pbutils/encoding-profile.h:135
   pragma Import (C, gst_encoding_profile_get_presence, "gst_encoding_profile_get_presence");

   function gst_encoding_profile_get_restriction (profile : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/pbutils/encoding-profile.h:136
   pragma Import (C, gst_encoding_profile_get_restriction, "gst_encoding_profile_get_restriction");

   procedure gst_encoding_profile_set_name (profile : System.Address; name : access GLIB.gchar);  -- gst/pbutils/encoding-profile.h:138
   pragma Import (C, gst_encoding_profile_set_name, "gst_encoding_profile_set_name");

   procedure gst_encoding_profile_set_description (profile : System.Address; description : access GLIB.gchar);  -- gst/pbutils/encoding-profile.h:139
   pragma Import (C, gst_encoding_profile_set_description, "gst_encoding_profile_set_description");

   procedure gst_encoding_profile_set_format (profile : System.Address; format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/pbutils/encoding-profile.h:140
   pragma Import (C, gst_encoding_profile_set_format, "gst_encoding_profile_set_format");

   procedure gst_encoding_profile_set_preset (profile : System.Address; preset : access GLIB.gchar);  -- gst/pbutils/encoding-profile.h:141
   pragma Import (C, gst_encoding_profile_set_preset, "gst_encoding_profile_set_preset");

   procedure gst_encoding_profile_set_restriction (profile : System.Address; restriction : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/pbutils/encoding-profile.h:142
   pragma Import (C, gst_encoding_profile_set_restriction, "gst_encoding_profile_set_restriction");

   procedure gst_encoding_profile_set_presence (profile : System.Address; presence : GLIB.guint);  -- gst/pbutils/encoding-profile.h:143
   pragma Import (C, gst_encoding_profile_set_presence, "gst_encoding_profile_set_presence");

   function gst_encoding_profile_is_equal (a : System.Address; b : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-profile.h:145
   pragma Import (C, gst_encoding_profile_is_equal, "gst_encoding_profile_is_equal");

   function gst_encoding_profile_get_input_caps (profile : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/pbutils/encoding-profile.h:147
   pragma Import (C, gst_encoding_profile_get_input_caps, "gst_encoding_profile_get_input_caps");

   function gst_encoding_profile_get_type_nick (profile : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-profile.h:149
   pragma Import (C, gst_encoding_profile_get_type_nick, "gst_encoding_profile_get_type_nick");

   function gst_encoding_profile_find
     (targetname : access GLIB.gchar;
      profilename : access GLIB.gchar;
      category : access GLIB.gchar) return System.Address;  -- gst/pbutils/encoding-profile.h:151
   pragma Import (C, gst_encoding_profile_find, "gst_encoding_profile_find");

  -- GstEncodingContainerProfile API  
   function gst_encoding_container_profile_add_profile (container : System.Address; profile : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-profile.h:156
   pragma Import (C, gst_encoding_container_profile_add_profile, "gst_encoding_container_profile_add_profile");

   function gst_encoding_container_profile_contains_profile (container : System.Address; profile : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-profile.h:158
   pragma Import (C, gst_encoding_container_profile_contains_profile, "gst_encoding_container_profile_contains_profile");

   function gst_encoding_container_profile_get_profiles (profile : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/encoding-profile.h:160
   pragma Import (C, gst_encoding_container_profile_get_profiles, "gst_encoding_container_profile_get_profiles");

   function gst_encoding_container_profile_new
     (name : access GLIB.gchar;
      description : access GLIB.gchar;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      preset : access GLIB.gchar) return System.Address;  -- gst/pbutils/encoding-profile.h:163
   pragma Import (C, gst_encoding_container_profile_new, "gst_encoding_container_profile_new");

  -- Invidual stream encodingprofile API  
   function gst_encoding_video_profile_new
     (format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      preset : access GLIB.gchar;
      restriction : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      presence : GLIB.guint) return System.Address;  -- gst/pbutils/encoding-profile.h:170
   pragma Import (C, gst_encoding_video_profile_new, "gst_encoding_video_profile_new");

   function gst_encoding_audio_profile_new
     (format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      preset : access GLIB.gchar;
      restriction : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      presence : GLIB.guint) return System.Address;  -- gst/pbutils/encoding-profile.h:174
   pragma Import (C, gst_encoding_audio_profile_new, "gst_encoding_audio_profile_new");

   function gst_encoding_video_profile_get_pass (prof : System.Address) return GLIB.guint;  -- gst/pbutils/encoding-profile.h:179
   pragma Import (C, gst_encoding_video_profile_get_pass, "gst_encoding_video_profile_get_pass");

   function gst_encoding_video_profile_get_variableframerate (prof : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-profile.h:180
   pragma Import (C, gst_encoding_video_profile_get_variableframerate, "gst_encoding_video_profile_get_variableframerate");

   procedure gst_encoding_video_profile_set_pass (prof : System.Address; pass : GLIB.guint);  -- gst/pbutils/encoding-profile.h:182
   pragma Import (C, gst_encoding_video_profile_set_pass, "gst_encoding_video_profile_set_pass");

   procedure gst_encoding_video_profile_set_variableframerate (prof : System.Address; variableframerate : GLIB.gboolean);  -- gst/pbutils/encoding-profile.h:184
   pragma Import (C, gst_encoding_video_profile_set_variableframerate, "gst_encoding_video_profile_set_variableframerate");

   function gst_encoding_profile_from_discoverer (info : System.Address) return System.Address;  -- gst/pbutils/encoding-profile.h:187
   pragma Import (C, gst_encoding_profile_from_discoverer, "gst_encoding_profile_from_discoverer");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_profile_h;
