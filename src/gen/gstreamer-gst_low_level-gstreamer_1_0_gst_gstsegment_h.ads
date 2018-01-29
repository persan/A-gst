pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h is

   --  unsupported macro: GST_TYPE_SEGMENT (gst_segment_get_type())
  -- GStreamer
  -- * Copyright (C) 2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstsegment.h: Header for GstSegment subsystem
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstSegment;
   type u_GstSegment_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstSegment is u_GstSegment;  -- gst/gstsegment.h:32

  --*
  -- * GstSeekType:
  -- * @GST_SEEK_TYPE_NONE: no change in position is required
  -- * @GST_SEEK_TYPE_SET: absolute position is requested
  -- * @GST_SEEK_TYPE_END: relative position to duration is requested
  -- *
  -- * The different types of seek events. When constructing a seek event with
  -- * gst_event_new_seek() or when doing gst_segment_do_seek ().
  --  

  -- one of these  
   type GstSeekType is 
     (GST_SEEK_TYPE_NONE,
      GST_SEEK_TYPE_SET,
      GST_SEEK_TYPE_END);
   pragma Convention (C, GstSeekType);  -- gst/gstsegment.h:48

  --*
  -- * GstSeekFlags:
  -- * @GST_SEEK_FLAG_NONE: no flag
  -- * @GST_SEEK_FLAG_FLUSH: flush pipeline
  -- * @GST_SEEK_FLAG_ACCURATE: accurate position is requested, this might
  -- *                     be considerably slower for some formats.
  -- * @GST_SEEK_FLAG_KEY_UNIT: seek to the nearest keyframe. This might be
  -- *                     faster but less accurate.
  -- * @GST_SEEK_FLAG_SEGMENT: perform a segment seek.
  -- * @GST_SEEK_FLAG_TRICKMODE: when doing fast forward or fast reverse playback, allow
  -- *                     elements to skip frames instead of generating all
  -- *                     frames. (Since 1.6)
  -- * @GST_SEEK_FLAG_SNAP_BEFORE: go to a location before the requested position,
  -- *                     if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe at or before
  -- *                     the requested position the one at or before the seek target.
  -- * @GST_SEEK_FLAG_SNAP_AFTER: go to a location after the requested position,
  -- *                     if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe at of after the
  -- *                     requested position.
  -- * @GST_SEEK_FLAG_SNAP_NEAREST: go to a position near the requested position,
  -- *                     if %GST_SEEK_FLAG_KEY_UNIT this means the keyframe closest
  -- *                     to the requested position, if both keyframes are at an equal
  -- *                     distance, behaves like %GST_SEEK_FLAG_SNAP_BEFORE.
  -- * @GST_SEEK_FLAG_TRICKMODE_KEY_UNITS: when doing fast forward or fast reverse
  -- *                     playback, request that elements only decode keyframes
  -- *                     and skip all other content, for formats that have
  -- *                     keyframes. (Since 1.6)
  -- * @GST_SEEK_FLAG_TRICKMODE_NO_AUDIO: when doing fast forward or fast reverse
  -- *                     playback, request that audio decoder elements skip
  -- *                     decoding and output only gap events or silence. (Since 1.6)
  -- * @GST_SEEK_FLAG_SKIP: Deprecated backward compatibility flag, replaced
  -- *                     by %GST_SEEK_FLAG_TRICKMODE
  -- *
  -- * Flags to be used with gst_element_seek() or gst_event_new_seek(). All flags
  -- * can be used together.
  -- *
  -- * A non flushing seek might take some time to perform as the currently
  -- * playing data in the pipeline will not be cleared.
  -- *
  -- * An accurate seek might be slower for formats that don't have any indexes
  -- * or timestamp markers in the stream. Specifying this flag might require a
  -- * complete scan of the file in those cases.
  -- *
  -- * When performing a segment seek: after the playback of the segment completes,
  -- * no EOS will be emitted by the element that performed the seek, but a
  -- * %GST_MESSAGE_SEGMENT_DONE message will be posted on the bus by the element.
  -- * When this message is posted, it is possible to send a new seek event to
  -- * continue playback. With this seek method it is possible to perform seamless
  -- * looping or simple linear editing.
  -- *
  -- * When doing fast forward (rate > 1.0) or fast reverse (rate < -1.0) trickmode
  -- * playback, the %GST_SEEK_FLAG_TRICKMODE flag can be used to instruct decoders
  -- * and demuxers to adjust the playback rate by skipping frames. This can improve
  -- * performance and decrease CPU usage because not all frames need to be decoded.
  -- *
  -- * Beyond that, the %GST_SEEK_FLAG_TRICKMODE_KEY_UNITS flag can be used to
  -- * request that decoders skip all frames except key units, and
  -- * %GST_SEEK_FLAG_TRICKMODE_NO_AUDIO flags can be used to request that audio
  -- * decoders do no decoding at all, and simple output silence.
  -- *
  -- * The %GST_SEEK_FLAG_SNAP_BEFORE flag can be used to snap to the previous
  -- * relevant location, and the %GST_SEEK_FLAG_SNAP_AFTER flag can be used to
  -- * select the next relevant location. If %GST_SEEK_FLAG_KEY_UNIT is specified,
  -- * the relevant location is a keyframe. If both flags are specified, the nearest
  -- * of these locations will be selected. If none are specified, the implementation is
  -- * free to select whichever it wants.
  -- *
  -- * The before and after here are in running time, so when playing backwards,
  -- * the next location refers to the one that will played in next, and not the
  -- * one that is located after in the actual source stream.
  -- *
  -- * Also see part-seeking.txt in the GStreamer design documentation for more
  -- * details on the meaning of these flags and the behaviour expected of
  -- * elements that handle them.
  --  

  -- FIXME 2.0: Remove _SKIP flag,
  --   * which was kept for backward compat when _TRICKMODE was added  

  -- Careful to restart next flag with 1<<7 here  
   subtype GstSeekFlags is unsigned;
   GST_SEEK_FLAG_NONE : constant GstSeekFlags := 0;
   GST_SEEK_FLAG_FLUSH : constant GstSeekFlags := 1;
   GST_SEEK_FLAG_ACCURATE : constant GstSeekFlags := 2;
   GST_SEEK_FLAG_KEY_UNIT : constant GstSeekFlags := 4;
   GST_SEEK_FLAG_SEGMENT : constant GstSeekFlags := 8;
   GST_SEEK_FLAG_TRICKMODE : constant GstSeekFlags := 16;
   GST_SEEK_FLAG_SKIP : constant GstSeekFlags := 16;
   GST_SEEK_FLAG_SNAP_BEFORE : constant GstSeekFlags := 32;
   GST_SEEK_FLAG_SNAP_AFTER : constant GstSeekFlags := 64;
   GST_SEEK_FLAG_SNAP_NEAREST : constant GstSeekFlags := 96;
   GST_SEEK_FLAG_TRICKMODE_KEY_UNITS : constant GstSeekFlags := 128;
   GST_SEEK_FLAG_TRICKMODE_NO_AUDIO : constant GstSeekFlags := 256;  -- gst/gstsegment.h:140

  --*
  -- * GstSegmentFlags:
  -- * @GST_SEGMENT_FLAG_NONE: no flags
  -- * @GST_SEGMENT_FLAG_RESET: reset the pipeline running_time to the segment
  -- *                          running_time
  -- * @GST_SEGMENT_FLAG_TRICKMODE: perform skip playback (Since 1.6)
  -- * @GST_SEGMENT_FLAG_SEGMENT: send SEGMENT_DONE instead of EOS
  -- * @GST_SEGMENT_FLAG_TRICKMODE_KEY_UNITS: Decode only keyframes, where
  -- *                                        possible (Since 1.6)
  -- * @GST_SEGMENT_FLAG_TRICKMODE_NO_AUDIO: Do not decode any audio, where
  -- *                                        possible (Since 1.6)
  -- * @GST_SEGMENT_FLAG_SKIP: Deprecated backward compatibility flag, replaced
  -- *                         by @GST_SEGMENT_FLAG_TRICKMODE
  -- *
  -- * Flags for the GstSegment structure. Currently mapped to the corresponding
  -- * values of the seek flags.
  --  

  -- Note: update gst_segment_do_seek() when adding new flags here  
  --< flags > 
  -- FIXME 2.0: Remove _SKIP flag,
  --   * which was kept for backward compat when _TRICKMODE was added  

   subtype GstSegmentFlags is unsigned;
   GST_SEGMENT_FLAG_NONE : constant GstSegmentFlags := 0;
   GST_SEGMENT_FLAG_RESET : constant GstSegmentFlags := 1;
   GST_SEGMENT_FLAG_TRICKMODE : constant GstSegmentFlags := 16;
   GST_SEGMENT_FLAG_SKIP : constant GstSegmentFlags := 16;
   GST_SEGMENT_FLAG_SEGMENT : constant GstSegmentFlags := 8;
   GST_SEGMENT_FLAG_TRICKMODE_KEY_UNITS : constant GstSegmentFlags := 128;
   GST_SEGMENT_FLAG_TRICKMODE_NO_AUDIO : constant GstSegmentFlags := 256;  -- gst/gstsegment.h:170

  --*
  -- * GstSegment:
  -- * @flags: flags for this segment
  -- * @rate: the playback rate of the segment
  -- * @applied_rate: the already applied rate to the segment
  -- * @format: the format of the segment values
  -- * @base: the running time (plus elapsed time, see offset) of the segment start
  -- * @offset: the amount (in buffer timestamps) that has already been elapsed in
  -- *     the segment
  -- * @start: the start of the segment in buffer timestamp time (PTS)
  -- * @stop: the stop of the segment in buffer timestamp time (PTS)
  -- * @time: the stream time of the segment start
  -- * @position: the buffer timestamp position in the segment (used internally by
  -- *     elements such as sources, demuxers or parsers to track progress)
  -- * @duration: the duration of the segment
  -- *
  -- * A helper structure that holds the configured region of
  -- * interest in a media file.
  --  

  --< public > 
   type GstSegment is record
      flags : aliased GstSegmentFlags;  -- gst/gstsegment.h:193
      rate : aliased GLIB.gdouble;  -- gst/gstsegment.h:195
      applied_rate : aliased GLIB.gdouble;  -- gst/gstsegment.h:196
      format : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;  -- gst/gstsegment.h:198
      base : aliased GLIB.guint64;  -- gst/gstsegment.h:199
      offset : aliased GLIB.guint64;  -- gst/gstsegment.h:200
      start : aliased GLIB.guint64;  -- gst/gstsegment.h:201
      stop : aliased GLIB.guint64;  -- gst/gstsegment.h:202
      time : aliased GLIB.guint64;  -- gst/gstsegment.h:203
      position : aliased GLIB.guint64;  -- gst/gstsegment.h:205
      duration : aliased GLIB.guint64;  -- gst/gstsegment.h:206
      u_gst_reserved : u_GstSegment_u_gst_reserved_array;  -- gst/gstsegment.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstSegment);  -- gst/gstsegment.h:191

  -- < private >  
   function gst_segment_get_type return GLIB.GType;  -- gst/gstsegment.h:212
   pragma Import (C, gst_segment_get_type, "gst_segment_get_type");

   function gst_segment_new return access GstSegment;  -- gst/gstsegment.h:214
   pragma Import (C, gst_segment_new, "gst_segment_new");

   function gst_segment_copy (segment : access constant GstSegment) return access GstSegment;  -- gst/gstsegment.h:215
   pragma Import (C, gst_segment_copy, "gst_segment_copy");

   procedure gst_segment_copy_into (src : access constant GstSegment; dest : access GstSegment);  -- gst/gstsegment.h:216
   pragma Import (C, gst_segment_copy_into, "gst_segment_copy_into");

   procedure gst_segment_free (segment : access GstSegment);  -- gst/gstsegment.h:217
   pragma Import (C, gst_segment_free, "gst_segment_free");

   procedure gst_segment_init (segment : access GstSegment; format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat);  -- gst/gstsegment.h:219
   pragma Import (C, gst_segment_init, "gst_segment_init");

   function gst_segment_to_stream_time_full
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      position : GLIB.guint64;
      stream_time : access GLIB.guint64) return GLIB.gint;  -- gst/gstsegment.h:221
   pragma Import (C, gst_segment_to_stream_time_full, "gst_segment_to_stream_time_full");

   function gst_segment_to_stream_time
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      position : GLIB.guint64) return GLIB.guint64;  -- gst/gstsegment.h:222
   pragma Import (C, gst_segment_to_stream_time, "gst_segment_to_stream_time");

   function gst_segment_position_from_stream_time_full
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      stream_time : GLIB.guint64;
      position : access GLIB.guint64) return GLIB.gint;  -- gst/gstsegment.h:223
   pragma Import (C, gst_segment_position_from_stream_time_full, "gst_segment_position_from_stream_time_full");

   function gst_segment_position_from_stream_time
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      stream_time : GLIB.guint64) return GLIB.guint64;  -- gst/gstsegment.h:224
   pragma Import (C, gst_segment_position_from_stream_time, "gst_segment_position_from_stream_time");

   function gst_segment_to_running_time
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      position : GLIB.guint64) return GLIB.guint64;  -- gst/gstsegment.h:225
   pragma Import (C, gst_segment_to_running_time, "gst_segment_to_running_time");

   function gst_segment_to_running_time_full
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      position : GLIB.guint64;
      running_time : access GLIB.guint64) return GLIB.gint;  -- gst/gstsegment.h:227
   pragma Import (C, gst_segment_to_running_time_full, "gst_segment_to_running_time_full");

   function gst_segment_to_position
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      running_time : GLIB.guint64) return GLIB.guint64;  -- gst/gstsegment.h:230
   pragma Import (C, gst_segment_to_position, "gst_segment_to_position");

   function gst_segment_position_from_running_time_full
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      running_time : GLIB.guint64;
      position : access GLIB.guint64) return GLIB.gint;  -- gst/gstsegment.h:232
   pragma Import (C, gst_segment_position_from_running_time_full, "gst_segment_position_from_running_time_full");

   function gst_segment_position_from_running_time
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      running_time : GLIB.guint64) return GLIB.guint64;  -- gst/gstsegment.h:233
   pragma Import (C, gst_segment_position_from_running_time, "gst_segment_position_from_running_time");

   function gst_segment_set_running_time
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      running_time : GLIB.guint64) return GLIB.gboolean;  -- gst/gstsegment.h:235
   pragma Import (C, gst_segment_set_running_time, "gst_segment_set_running_time");

   function gst_segment_offset_running_time
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      offset : GLIB.gint64) return GLIB.gboolean;  -- gst/gstsegment.h:237
   pragma Import (C, gst_segment_offset_running_time, "gst_segment_offset_running_time");

   function gst_segment_clip
     (segment : access constant GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      start : GLIB.guint64;
      stop : GLIB.guint64;
      clip_start : access GLIB.guint64;
      clip_stop : access GLIB.guint64) return GLIB.gboolean;  -- gst/gstsegment.h:239
   pragma Import (C, gst_segment_clip, "gst_segment_clip");

   function gst_segment_do_seek
     (segment : access GstSegment;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      flags : GstSeekFlags;
      start_type : GstSeekType;
      start : GLIB.guint64;
      stop_type : GstSeekType;
      stop : GLIB.guint64;
      update : access GLIB.gboolean) return GLIB.gboolean;  -- gst/gstsegment.h:243
   pragma Import (C, gst_segment_do_seek, "gst_segment_do_seek");

   function gst_segment_is_equal (s0 : access constant GstSegment; s1 : access constant GstSegment) return GLIB.gboolean;  -- gst/gstsegment.h:247
   pragma Import (C, gst_segment_is_equal, "gst_segment_is_equal");

   procedure glib_autoptr_cleanup_GstSegment (u_ptr : System.Address);  -- gst/gstsegment.h:250
   pragma Import (C, glib_autoptr_cleanup_GstSegment, "glib_autoptr_cleanup_GstSegment");

   type GstSegment_autoptr is access all GstSegment;  -- gst/gstsegment.h:250

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
