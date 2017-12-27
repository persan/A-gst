pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h is

   --  unsupported macro: GST_TYPE_BASE_VIDEO_CODEC (gst_base_video_codec_get_type())
   --  arg-macro: function GST_BASE_VIDEO_CODEC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodec);
   --  arg-macro: function GST_BASE_VIDEO_CODEC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodecClass);
   --  arg-macro: function GST_BASE_VIDEO_CODEC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodecClass);
   --  arg-macro: function GST_IS_BASE_VIDEO_CODEC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_VIDEO_CODEC);
   --  arg-macro: function GST_IS_BASE_VIDEO_CODEC_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_VIDEO_CODEC);
   GST_BASE_VIDEO_CODEC_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/video/gstbasevideocodec.h:52

   GST_BASE_VIDEO_CODEC_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/video/gstbasevideocodec.h:58
   --  arg-macro: function GST_BASE_VIDEO_CODEC_SRC_PAD (obj)
   --    return ((GstBaseVideoCodec *) (obj)).srcpad;
   --  arg-macro: function GST_BASE_VIDEO_CODEC_SINK_PAD (obj)
   --    return ((GstBaseVideoCodec *) (obj)).sinkpad;
   --  unsupported macro: GST_BASE_VIDEO_CODEC_FLOW_NEED_DATA GST_FLOW_CUSTOM_SUCCESS
   --  arg-macro: procedure GST_BASE_VIDEO_CODEC_STREAM_LOCK (codec)
   --    g_static_rec_mutex_lock (andGST_BASE_VIDEO_CODEC (codec).stream_lock)
   --  arg-macro: procedure GST_BASE_VIDEO_CODEC_STREAM_UNLOCK (codec)
   --    g_static_rec_mutex_unlock (andGST_BASE_VIDEO_CODEC (codec).stream_lock)

  -- GStreamer
  -- * Copyright (C) 2008 David Schleef <ds@schleef.org>
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
  -- * GST_BASE_VIDEO_CODEC_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  --  

  --*
  -- * GST_BASE_VIDEO_CODEC_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  --  

  --*
  -- * GST_BASE_VIDEO_CODEC_SRC_PAD:
  -- * @obj: base video codec instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_VIDEO_CODEC_SINK_PAD:
  -- * @obj: base video codec instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_VIDEO_CODEC_FLOW_NEED_DATA:
  -- *
  --  

   type GstVideoState;
   --subtype GstVideoState is u_GstVideoState;  -- gst/video/gstbasevideocodec.h:85

   type GstVideoFrame;
   --subtype GstVideoFrame is u_GstVideoFrame;  -- gst/video/gstbasevideocodec.h:86

   type GstBaseVideoCodec;
   type u_GstBaseVideoCodec_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoCodec is u_GstBaseVideoCodec;  -- gst/video/gstbasevideocodec.h:87

   type GstBaseVideoCodecClass;
   type u_GstBaseVideoCodecClass_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoCodecClass is u_GstBaseVideoCodecClass;  -- gst/video/gstbasevideocodec.h:88

   type GstVideoState is record
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/video/gstbasevideocodec.h:92
      format : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_h.GstVideoFormat;  -- gst/video/gstbasevideocodec.h:93
      width : aliased int;  -- gst/video/gstbasevideocodec.h:94
      height : aliased int;  -- gst/video/gstbasevideocodec.h:94
      fps_n : aliased int;  -- gst/video/gstbasevideocodec.h:95
      fps_d : aliased int;  -- gst/video/gstbasevideocodec.h:95
      par_n : aliased int;  -- gst/video/gstbasevideocodec.h:96
      par_d : aliased int;  -- gst/video/gstbasevideocodec.h:96
      have_interlaced : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:98
      interlaced : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:99
      top_field_first : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:100
      clean_width : aliased int;  -- gst/video/gstbasevideocodec.h:102
      clean_height : aliased int;  -- gst/video/gstbasevideocodec.h:102
      clean_offset_left : aliased int;  -- gst/video/gstbasevideocodec.h:103
      clean_offset_top : aliased int;  -- gst/video/gstbasevideocodec.h:103
      bytes_per_picture : aliased int;  -- gst/video/gstbasevideocodec.h:105
      codec_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstbasevideocodec.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoState);  -- gst/video/gstbasevideocodec.h:90

   type GstVideoFrame is record
      decode_timestamp : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideocodec.h:113
      presentation_timestamp : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideocodec.h:114
      presentation_duration : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideocodec.h:115
      system_frame_number : aliased GLIB.gint;  -- gst/video/gstbasevideocodec.h:117
      decode_frame_number : aliased GLIB.gint;  -- gst/video/gstbasevideocodec.h:118
      presentation_frame_number : aliased GLIB.gint;  -- gst/video/gstbasevideocodec.h:119
      distance_from_sync : aliased int;  -- gst/video/gstbasevideocodec.h:121
      is_sync_point : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:122
      is_eos : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:123
      sink_buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstbasevideocodec.h:125
      src_buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstbasevideocodec.h:126
      field_index : aliased int;  -- gst/video/gstbasevideocodec.h:128
      n_fields : aliased int;  -- gst/video/gstbasevideocodec.h:129
      coder_hook : System.Address;  -- gst/video/gstbasevideocodec.h:131
      coder_hook_destroy_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/video/gstbasevideocodec.h:132
      deadline : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideocodec.h:134
      force_keyframe : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:136
      force_keyframe_headers : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:137
      events : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideocodec.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFrame);  -- gst/video/gstbasevideocodec.h:111

  -- Events that should be pushed downstream *before*
  --   * the next src_buffer  

   type GstBaseVideoCodec is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/video/gstbasevideocodec.h:146
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/video/gstbasevideocodec.h:149
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/video/gstbasevideocodec.h:150
      stream_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/video/gstbasevideocodec.h:155
      system_frame_number : aliased GLIB.guint64;  -- gst/video/gstbasevideocodec.h:157
      frames : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideocodec.h:159
      state : aliased GstVideoState;  -- gst/video/gstbasevideocodec.h:160
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/video/gstbasevideocodec.h:161
      proportion : aliased GLIB.gdouble;  -- gst/video/gstbasevideocodec.h:163
      earliest_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideocodec.h:164
      discont : aliased GLIB.gboolean;  -- gst/video/gstbasevideocodec.h:165
      bytes : aliased GLIB.gint64;  -- gst/video/gstbasevideocodec.h:167
      time : aliased GLIB.gint64;  -- gst/video/gstbasevideocodec.h:168
      padding : u_GstBaseVideoCodec_padding_array;  -- gst/video/gstbasevideocodec.h:171
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoCodec);  -- gst/video/gstbasevideocodec.h:144

  --< private > 
  -- protects all data processing, i.e. is locked
  --   * in the chain function, finish_frame and when
  --   * processing serialized events  

  -- Protected with OBJECT_LOCK  
  -- FIXME before moving to base  
  -- GStreamer
  -- * Copyright (C) 2008 David Schleef <ds@schleef.org>
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

   type GstBaseVideoCodecClass is record
      element_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/video/gstbasevideocodec.h:176
      padding : u_GstBaseVideoCodecClass_padding_array;  -- gst/video/gstbasevideocodec.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoCodecClass);  -- gst/video/gstbasevideocodec.h:174

  -- FIXME before moving to base  
   function gst_base_video_codec_get_type return GLIB.GType;  -- gst/video/gstbasevideocodec.h:182
   pragma Import (C, gst_base_video_codec_get_type, "gst_base_video_codec_get_type");

   function gst_base_video_codec_new_frame (base_video_codec : access GstBaseVideoCodec) return access GstVideoFrame;  -- gst/video/gstbasevideocodec.h:184
   pragma Import (C, gst_base_video_codec_new_frame, "gst_base_video_codec_new_frame");

   procedure gst_base_video_codec_free_frame (frame : access GstVideoFrame);  -- gst/video/gstbasevideocodec.h:185
   pragma Import (C, gst_base_video_codec_free_frame, "gst_base_video_codec_free_frame");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
