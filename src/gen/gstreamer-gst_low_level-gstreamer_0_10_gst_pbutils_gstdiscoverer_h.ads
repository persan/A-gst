pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gerror_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_gstdiscoverer_h is

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
  -- GStreamer
  -- * Copyright (C) 2009 Edward Hervey <edward.hervey@collabora.co.uk>
  -- *               2009 Nokia Corporation
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

   --  skipped empty struct u_GstDiscovererStreamInfo

   --  skipped empty struct GstDiscovererStreamInfo

   subtype GstDiscovererStreamInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:35

   function gst_discoverer_stream_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:36
   pragma Import (C, gst_discoverer_stream_info_get_type, "gst_discoverer_stream_info_get_type");

  --*
  -- * GstDiscovererStreamInfo:
  -- *
  -- * Base structure for information concerning a media stream. Depending on the
  -- * stream type, one can find more media-specific information in
  -- * #GstDiscovererAudioInfo, #GstDiscovererVideoInfo, and
  -- * #GstDiscovererContainerInfo.
  -- *
  -- * The #GstDiscovererStreamInfo represents the topology of the stream. Siblings
  -- * can be iterated over with gst_discoverer_stream_info_get_next() and
  -- * gst_discoverer_stream_info_get_previous(). Children (sub-streams) of a
  -- * stream can be accessed using the #GstDiscovererContainerInfo API.
  -- *
  -- * As a simple example, if you run #GstDiscoverer on an AVI file with one audio
  -- * and one video stream, you will get a #GstDiscovererContainerInfo
  -- * corresponding to the AVI container, which in turn will have a
  -- * #GstDiscovererAudioInfo sub-stream and a #GstDiscovererVideoInfo sub-stream
  -- * for the audio and video streams respectively.
  -- *
  -- * Since: 0.10.31
  --  

   function gst_discoverer_stream_info_get_previous (info : System.Address) return System.Address;  -- gst/pbutils/gstdiscoverer.h:62
   pragma Import (C, gst_discoverer_stream_info_get_previous, "gst_discoverer_stream_info_get_previous");

   function gst_discoverer_stream_info_get_next (info : System.Address) return System.Address;  -- gst/pbutils/gstdiscoverer.h:63
   pragma Import (C, gst_discoverer_stream_info_get_next, "gst_discoverer_stream_info_get_next");

   function gst_discoverer_stream_info_get_caps (info : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/pbutils/gstdiscoverer.h:64
   pragma Import (C, gst_discoverer_stream_info_get_caps, "gst_discoverer_stream_info_get_caps");

   function gst_discoverer_stream_info_get_tags (info : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/pbutils/gstdiscoverer.h:65
   pragma Import (C, gst_discoverer_stream_info_get_tags, "gst_discoverer_stream_info_get_tags");

   function gst_discoverer_stream_info_get_misc (info : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/pbutils/gstdiscoverer.h:66
   pragma Import (C, gst_discoverer_stream_info_get_misc, "gst_discoverer_stream_info_get_misc");

   function gst_discoverer_stream_info_get_stream_type_nick (info : System.Address) return access GLIB.gchar;  -- gst/pbutils/gstdiscoverer.h:67
   pragma Import (C, gst_discoverer_stream_info_get_stream_type_nick, "gst_discoverer_stream_info_get_stream_type_nick");

  --*
  -- * GstDiscovererContainerInfo:
  -- *
  -- * #GstDiscovererStreamInfo specific to container streams.
  -- *
  -- * Since: 0.10.31
  --  

   --  skipped empty struct u_GstDiscovererContainerInfo

   --  skipped empty struct GstDiscovererContainerInfo

   subtype GstDiscovererContainerInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:83

   function gst_discoverer_container_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:85
   pragma Import (C, gst_discoverer_container_info_get_type, "gst_discoverer_container_info_get_type");

   function gst_discoverer_container_info_get_streams (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:87
   pragma Import (C, gst_discoverer_container_info_get_streams, "gst_discoverer_container_info_get_streams");

  --*
  -- * GstDiscovererAudioInfo:
  -- *
  -- * #GstDiscovererStreamInfo specific to audio streams.
  -- *
  -- * Since: 0.10.31
  --  

   --  skipped empty struct u_GstDiscovererAudioInfo

   --  skipped empty struct GstDiscovererAudioInfo

   subtype GstDiscovererAudioInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:104

   function gst_discoverer_audio_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:106
   pragma Import (C, gst_discoverer_audio_info_get_type, "gst_discoverer_audio_info_get_type");

   function gst_discoverer_audio_info_get_channels (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:108
   pragma Import (C, gst_discoverer_audio_info_get_channels, "gst_discoverer_audio_info_get_channels");

   function gst_discoverer_audio_info_get_sample_rate (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:109
   pragma Import (C, gst_discoverer_audio_info_get_sample_rate, "gst_discoverer_audio_info_get_sample_rate");

   function gst_discoverer_audio_info_get_depth (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:110
   pragma Import (C, gst_discoverer_audio_info_get_depth, "gst_discoverer_audio_info_get_depth");

   function gst_discoverer_audio_info_get_bitrate (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:111
   pragma Import (C, gst_discoverer_audio_info_get_bitrate, "gst_discoverer_audio_info_get_bitrate");

   function gst_discoverer_audio_info_get_max_bitrate (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:112
   pragma Import (C, gst_discoverer_audio_info_get_max_bitrate, "gst_discoverer_audio_info_get_max_bitrate");

   function gst_discoverer_audio_info_get_language (info : System.Address) return access GLIB.gchar;  -- gst/pbutils/gstdiscoverer.h:113
   pragma Import (C, gst_discoverer_audio_info_get_language, "gst_discoverer_audio_info_get_language");

  --*
  -- * GstDiscovererVideoInfo:
  -- *
  -- * #GstDiscovererStreamInfo specific to video streams (this includes images).
  -- *
  -- * Since: 0.10.31
  --  

   --  skipped empty struct u_GstDiscovererVideoInfo

   --  skipped empty struct GstDiscovererVideoInfo

   subtype GstDiscovererVideoInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:129

   function gst_discoverer_video_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:130
   pragma Import (C, gst_discoverer_video_info_get_type, "gst_discoverer_video_info_get_type");

   function gst_discoverer_video_info_get_width (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:132
   pragma Import (C, gst_discoverer_video_info_get_width, "gst_discoverer_video_info_get_width");

   function gst_discoverer_video_info_get_height (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:133
   pragma Import (C, gst_discoverer_video_info_get_height, "gst_discoverer_video_info_get_height");

   function gst_discoverer_video_info_get_depth (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:134
   pragma Import (C, gst_discoverer_video_info_get_depth, "gst_discoverer_video_info_get_depth");

   function gst_discoverer_video_info_get_framerate_num (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:135
   pragma Import (C, gst_discoverer_video_info_get_framerate_num, "gst_discoverer_video_info_get_framerate_num");

   function gst_discoverer_video_info_get_framerate_denom (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:136
   pragma Import (C, gst_discoverer_video_info_get_framerate_denom, "gst_discoverer_video_info_get_framerate_denom");

   function gst_discoverer_video_info_get_par_num (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:137
   pragma Import (C, gst_discoverer_video_info_get_par_num, "gst_discoverer_video_info_get_par_num");

   function gst_discoverer_video_info_get_par_denom (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:138
   pragma Import (C, gst_discoverer_video_info_get_par_denom, "gst_discoverer_video_info_get_par_denom");

   function gst_discoverer_video_info_is_interlaced (info : System.Address) return GLIB.gboolean;  -- gst/pbutils/gstdiscoverer.h:139
   pragma Import (C, gst_discoverer_video_info_is_interlaced, "gst_discoverer_video_info_is_interlaced");

   function gst_discoverer_video_info_get_bitrate (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:140
   pragma Import (C, gst_discoverer_video_info_get_bitrate, "gst_discoverer_video_info_get_bitrate");

   function gst_discoverer_video_info_get_max_bitrate (info : System.Address) return GLIB.guint;  -- gst/pbutils/gstdiscoverer.h:141
   pragma Import (C, gst_discoverer_video_info_get_max_bitrate, "gst_discoverer_video_info_get_max_bitrate");

   function gst_discoverer_video_info_is_image (info : System.Address) return GLIB.gboolean;  -- gst/pbutils/gstdiscoverer.h:142
   pragma Import (C, gst_discoverer_video_info_is_image, "gst_discoverer_video_info_is_image");

  --*
  -- * GstDiscovererSubtitleInfo:
  -- *
  -- * #GstDiscovererStreamInfo specific to subtitle streams (this includes text and
  -- * image based ones).
  -- *
  -- * Since: 0.10.36
  --  

   --  skipped empty struct u_GstDiscovererSubtitleInfo

   --  skipped empty struct GstDiscovererSubtitleInfo

   subtype GstDiscovererSubtitleInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:159

   function gst_discoverer_subtitle_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:160
   pragma Import (C, gst_discoverer_subtitle_info_get_type, "gst_discoverer_subtitle_info_get_type");

   function gst_discoverer_subtitle_info_get_language (info : System.Address) return access GLIB.gchar;  -- gst/pbutils/gstdiscoverer.h:162
   pragma Import (C, gst_discoverer_subtitle_info_get_language, "gst_discoverer_subtitle_info_get_language");

  --*
  -- * GstDiscovererResult:
  -- * @GST_DISCOVERER_OK: The discovery was successful
  -- * @GST_DISCOVERER_URI_INVALID: the URI is invalid
  -- * @GST_DISCOVERER_ERROR: an error happened and the GError is set
  -- * @GST_DISCOVERER_TIMEOUT: the discovery timed-out
  -- * @GST_DISCOVERER_BUSY: the discoverer was already discovering a file
  -- * @GST_DISCOVERER_MISSING_PLUGINS: Some plugins are missing for full discovery
  -- *
  -- * Result values for the discovery process.
  -- *
  -- * Since: 0.10.31
  --  

   type GstDiscovererResult is 
     (GST_DISCOVERER_OK,
      GST_DISCOVERER_URI_INVALID,
      GST_DISCOVERER_ERROR,
      GST_DISCOVERER_TIMEOUT,
      GST_DISCOVERER_BUSY,
      GST_DISCOVERER_MISSING_PLUGINS);
   pragma Convention (C, GstDiscovererResult);  -- gst/pbutils/gstdiscoverer.h:184

  --*
  -- * GstDiscovererInfo:
  -- *
  -- * Structure containing the information of a URI analyzed by #GstDiscoverer.
  -- *
  -- * Since: 0.10.31
  --  

   --  skipped empty struct u_GstDiscovererInfo

   --  skipped empty struct GstDiscovererInfo

   subtype GstDiscovererInfoClass is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/gstdiscoverer.h:202

   function gst_discoverer_info_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:203
   pragma Import (C, gst_discoverer_info_get_type, "gst_discoverer_info_get_type");

   function gst_discoverer_info_copy (ptr : System.Address) return System.Address;  -- gst/pbutils/gstdiscoverer.h:208
   pragma Import (C, gst_discoverer_info_copy, "gst_discoverer_info_copy");

   function gst_discoverer_info_get_uri (info : System.Address) return access GLIB.gchar;  -- gst/pbutils/gstdiscoverer.h:210
   pragma Import (C, gst_discoverer_info_get_uri, "gst_discoverer_info_get_uri");

   function gst_discoverer_info_get_result (info : System.Address) return GstDiscovererResult;  -- gst/pbutils/gstdiscoverer.h:211
   pragma Import (C, gst_discoverer_info_get_result, "gst_discoverer_info_get_result");

   function gst_discoverer_info_get_stream_info (info : System.Address) return System.Address;  -- gst/pbutils/gstdiscoverer.h:212
   pragma Import (C, gst_discoverer_info_get_stream_info, "gst_discoverer_info_get_stream_info");

   function gst_discoverer_info_get_stream_list (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:213
   pragma Import (C, gst_discoverer_info_get_stream_list, "gst_discoverer_info_get_stream_list");

   function gst_discoverer_info_get_duration (info : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/pbutils/gstdiscoverer.h:214
   pragma Import (C, gst_discoverer_info_get_duration, "gst_discoverer_info_get_duration");

   function gst_discoverer_info_get_seekable (info : System.Address) return GLIB.gboolean;  -- gst/pbutils/gstdiscoverer.h:215
   pragma Import (C, gst_discoverer_info_get_seekable, "gst_discoverer_info_get_seekable");

   function gst_discoverer_info_get_misc (info : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/pbutils/gstdiscoverer.h:216
   pragma Import (C, gst_discoverer_info_get_misc, "gst_discoverer_info_get_misc");

   function gst_discoverer_info_get_tags (info : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/pbutils/gstdiscoverer.h:217
   pragma Import (C, gst_discoverer_info_get_tags, "gst_discoverer_info_get_tags");

   function gst_discoverer_info_get_streams (info : System.Address; streamtype : GLIB.GType) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:219
   pragma Import (C, gst_discoverer_info_get_streams, "gst_discoverer_info_get_streams");

   function gst_discoverer_info_get_audio_streams (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:221
   pragma Import (C, gst_discoverer_info_get_audio_streams, "gst_discoverer_info_get_audio_streams");

   function gst_discoverer_info_get_video_streams (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:222
   pragma Import (C, gst_discoverer_info_get_video_streams, "gst_discoverer_info_get_video_streams");

   function gst_discoverer_info_get_subtitle_streams (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:223
   pragma Import (C, gst_discoverer_info_get_subtitle_streams, "gst_discoverer_info_get_subtitle_streams");

   function gst_discoverer_info_get_container_streams (info : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/gstdiscoverer.h:224
   pragma Import (C, gst_discoverer_info_get_container_streams, "gst_discoverer_info_get_container_streams");

   procedure gst_discoverer_stream_info_list_free (infos : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/pbutils/gstdiscoverer.h:226
   pragma Import (C, gst_discoverer_stream_info_list_free, "gst_discoverer_stream_info_list_free");

   type GstDiscoverer;
   type u_GstDiscoverer_u_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDiscoverer is u_GstDiscoverer;  -- gst/pbutils/gstdiscoverer.h:239

   type GstDiscovererClass;
   type u_GstDiscovererClass_u_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDiscovererClass is u_GstDiscovererClass;  -- gst/pbutils/gstdiscoverer.h:240

   --  skipped empty struct u_GstDiscovererPrivate

   --  skipped empty struct GstDiscovererPrivate

  --*
  -- * GstDiscoverer:
  -- *
  -- * The #GstDiscoverer structure.
  -- *
  -- * Since: 0.10.31
  -- * 

   type GstDiscoverer is record
      parent : aliased GLIB.Object.GObject;  -- gst/pbutils/gstdiscoverer.h:251
      priv : System.Address;  -- gst/pbutils/gstdiscoverer.h:253
      u_reserved : u_GstDiscoverer_u_reserved_array;  -- gst/pbutils/gstdiscoverer.h:255
   end record;
   pragma Convention (C_Pass_By_Copy, GstDiscoverer);  -- gst/pbutils/gstdiscoverer.h:250

   type GstDiscovererClass is record
      parentclass : aliased GLIB.Object.GObject_Class;  -- gst/pbutils/gstdiscoverer.h:259
      finished : access procedure  (arg1 : access GstDiscoverer);  -- gst/pbutils/gstdiscoverer.h:262
      starting : access procedure  (arg1 : access GstDiscoverer);  -- gst/pbutils/gstdiscoverer.h:263
      discovered : access procedure 
           (arg1 : access GstDiscoverer;
            arg2 : System.Address;
            arg3 : access constant Glib.Error.GError);  -- gst/pbutils/gstdiscoverer.h:266
      u_reserved : u_GstDiscovererClass_u_reserved_array;  -- gst/pbutils/gstdiscoverer.h:268
   end record;
   pragma Convention (C_Pass_By_Copy, GstDiscovererClass);  -- gst/pbutils/gstdiscoverer.h:258

  -- signals  
   function gst_discoverer_get_type return GLIB.GType;  -- gst/pbutils/gstdiscoverer.h:271
   pragma Import (C, gst_discoverer_get_type, "gst_discoverer_get_type");

   function gst_discoverer_new (timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime; err : System.Address) return access GstDiscoverer;  -- gst/pbutils/gstdiscoverer.h:272
   pragma Import (C, gst_discoverer_new, "gst_discoverer_new");

  -- Asynchronous API  
   procedure gst_discoverer_start (discoverer : access GstDiscoverer);  -- gst/pbutils/gstdiscoverer.h:275
   pragma Import (C, gst_discoverer_start, "gst_discoverer_start");

   procedure gst_discoverer_stop (discoverer : access GstDiscoverer);  -- gst/pbutils/gstdiscoverer.h:276
   pragma Import (C, gst_discoverer_stop, "gst_discoverer_stop");

   function gst_discoverer_discover_uri_async (discoverer : access GstDiscoverer; uri : access GLIB.gchar) return GLIB.gboolean;  -- gst/pbutils/gstdiscoverer.h:277
   pragma Import (C, gst_discoverer_discover_uri_async, "gst_discoverer_discover_uri_async");

  -- Synchronous API  
   function gst_discoverer_discover_uri
     (discoverer : access GstDiscoverer;
      uri : access GLIB.gchar;
      err : System.Address) return System.Address;  -- gst/pbutils/gstdiscoverer.h:282
   pragma Import (C, gst_discoverer_discover_uri, "gst_discoverer_discover_uri");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_gstdiscoverer_h;
