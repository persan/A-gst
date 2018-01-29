pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h is

   --  unsupported macro: GST_QUERY_TYPE_BOTH ((GstQueryTypeFlags)(GST_QUERY_TYPE_UPSTREAM | GST_QUERY_TYPE_DOWNSTREAM))
   GST_QUERY_NUM_SHIFT : constant := (8);  --  gst/gstquery.h:64
   --  arg-macro: function GST_QUERY_MAKE_TYPE (num, flags)
   --    return ((num) << GST_QUERY_NUM_SHIFT) or (flags);
   --  unsupported macro: GST_TYPE_QUERY (_gst_query_type)
   --  arg-macro: function GST_IS_QUERY (obj)
   --    return GST_IS_MINI_OBJECT_TYPE (obj, GST_TYPE_QUERY);
   --  arg-macro: function GST_QUERY_CAST (obj)
   --    return (GstQuery*)(obj);
   --  arg-macro: function GST_QUERY (obj)
   --    return GST_QUERY_CAST(obj);
   --  arg-macro: function GST_QUERY_TYPE (query)
   --    return ((GstQuery*)(query)).type;
   --  arg-macro: function GST_QUERY_TYPE_NAME (query)
   --    return gst_query_type_get_name(GST_QUERY_TYPE(query));
   --  arg-macro: procedure GST_QUERY_IS_UPSTREAM (ev)
   --    notnot(GST_QUERY_TYPE (ev) and GST_QUERY_TYPE_UPSTREAM)
   --  arg-macro: procedure GST_QUERY_IS_DOWNSTREAM (ev)
   --    notnot(GST_QUERY_TYPE (ev) and GST_QUERY_TYPE_DOWNSTREAM)
   --  arg-macro: procedure GST_QUERY_IS_SERIALIZED (ev)
   --    notnot(GST_QUERY_TYPE (ev) and GST_QUERY_TYPE_SERIALIZED)
   --  arg-macro: procedure gst_query_is_writable (q)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (q))
   --  arg-macro: procedure gst_query_make_writable (q)
   --    GST_QUERY_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (q)))

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *                    2011 Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * gstquery.h: GstQuery API declaration
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

   type GstQuery;
   --subtype GstQuery is u_GstQuery;  -- gst/gstquery.h:35

  --*
  -- * GstQueryTypeFlags:
  -- * @GST_QUERY_TYPE_UPSTREAM:     Set if the query can travel upstream.
  -- * @GST_QUERY_TYPE_DOWNSTREAM:   Set if the query can travel downstream.
  -- * @GST_QUERY_TYPE_SERIALIZED:   Set if the query should be serialized with data
  -- *                               flow.
  -- *
  -- * #GstQueryTypeFlags indicate the aspects of the different #GstQueryType
  -- * values. You can get the type flags of a #GstQueryType with the
  -- * gst_query_type_get_flags() function.
  --

   subtype GstQueryTypeFlags is unsigned;
   GST_QUERY_TYPE_UPSTREAM : constant GstQueryTypeFlags := 1;
   GST_QUERY_TYPE_DOWNSTREAM : constant GstQueryTypeFlags := 2;
   GST_QUERY_TYPE_SERIALIZED : constant GstQueryTypeFlags := 4;  -- gst/gstquery.h:54

  --*
  -- * GST_QUERY_TYPE_BOTH: (value 3) (type GstQueryTypeFlags)
  -- *
  -- * The same thing as #GST_QUERY_TYPE_UPSTREAM | #GST_QUERY_TYPE_DOWNSTREAM.
  --

  --*
  -- * GST_QUERY_MAKE_TYPE:
  -- * @num: the query number to create
  -- * @flags: the query flags
  -- *
  -- * when making custom query types, use this macro with the num and
  -- * the given flags
  --

  --*
  -- * GstQueryType:
  -- * @GST_QUERY_UNKNOWN: unknown query type
  -- * @GST_QUERY_POSITION: current position in stream
  -- * @GST_QUERY_DURATION: total duration of the stream
  -- * @GST_QUERY_LATENCY: latency of stream
  -- * @GST_QUERY_JITTER: current jitter of stream
  -- * @GST_QUERY_RATE: current rate of the stream
  -- * @GST_QUERY_SEEKING: seeking capabilities
  -- * @GST_QUERY_SEGMENT: segment start/stop positions
  -- * @GST_QUERY_CONVERT: convert values between formats
  -- * @GST_QUERY_FORMATS: query supported formats for convert
  -- * @GST_QUERY_BUFFERING: query available media for efficient seeking.
  -- * @GST_QUERY_CUSTOM: a custom application or element defined query.
  -- * @GST_QUERY_URI: query the URI of the source or sink.
  -- * @GST_QUERY_ALLOCATION: the buffer allocation properties
  -- * @GST_QUERY_SCHEDULING: the scheduling properties
  -- * @GST_QUERY_ACCEPT_CAPS: the accept caps query
  -- * @GST_QUERY_CAPS: the caps query
  -- * @GST_QUERY_DRAIN: wait till all serialized data is consumed downstream
  -- * @GST_QUERY_CONTEXT: query the pipeline-local context from
  -- *     downstream or upstream (since 1.2)
  -- *
  -- * Standard predefined Query types
  --

  -- NOTE: don't forget to update the table in gstquery.c when changing
  -- * this enum

   subtype GstQueryType is unsigned;
   GST_QUERY_UNKNOWN : constant GstQueryType := 0;
   GST_QUERY_POSITION : constant GstQueryType := 2563;
   GST_QUERY_DURATION : constant GstQueryType := 5123;
   GST_QUERY_LATENCY : constant GstQueryType := 7683;
   GST_QUERY_JITTER : constant GstQueryType := 10243;
   GST_QUERY_RATE : constant GstQueryType := 12803;
   GST_QUERY_SEEKING : constant GstQueryType := 15363;
   GST_QUERY_SEGMENT : constant GstQueryType := 17923;
   GST_QUERY_CONVERT : constant GstQueryType := 20483;
   GST_QUERY_FORMATS : constant GstQueryType := 23043;
   GST_QUERY_BUFFERING : constant GstQueryType := 28163;
   GST_QUERY_CUSTOM : constant GstQueryType := 30723;
   GST_QUERY_URI : constant GstQueryType := 33283;
   GST_QUERY_ALLOCATION : constant GstQueryType := 35846;
   GST_QUERY_SCHEDULING : constant GstQueryType := 38401;
   GST_QUERY_ACCEPT_CAPS : constant GstQueryType := 40963;
   GST_QUERY_CAPS : constant GstQueryType := 43523;
   GST_QUERY_DRAIN : constant GstQueryType := 46086;
   GST_QUERY_CONTEXT : constant GstQueryType := 48643;  -- gst/gstquery.h:127

  --*
  -- * GST_QUERY_TYPE:
  -- * @query: the query to query
  -- *
  -- * Get the #GstQueryType of the query.
  --

  --*
  -- * GST_QUERY_TYPE_NAME:
  -- * @query: the query to query
  -- *
  -- * Get a constant string representation of the #GstQueryType of the query.
  --

  --*
  -- * GST_QUERY_IS_UPSTREAM:
  -- * @ev: the query to query
  -- *
  -- * Check if an query can travel upstream.
  --

  --*
  -- * GST_QUERY_IS_DOWNSTREAM:
  -- * @ev: the query to query
  -- *
  -- * Check if an query can travel downstream.
  --

  --*
  -- * GST_QUERY_IS_SERIALIZED:
  -- * @ev: the query to query
  -- *
  -- * Check if an query is serialized with the data stream.
  --

  --*
  -- * GstQuery:
  -- * @mini_object: The parent #GstMiniObject type
  -- * @type: the #GstQueryType
  -- *
  -- * The #GstQuery structure.
  --

   type GstQuery is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gstquery.h:185
      c_type : aliased GstQueryType;  -- gst/gstquery.h:188
   end record;
   pragma Convention (C_Pass_By_Copy, GstQuery);  -- gst/gstquery.h:183

  --< public >
  -- with COW
  --*
  -- * GstBufferingMode:
  -- * @GST_BUFFERING_STREAM: a small amount of data is buffered
  -- * @GST_BUFFERING_DOWNLOAD: the stream is being downloaded
  -- * @GST_BUFFERING_TIMESHIFT: the stream is being downloaded in a ringbuffer
  -- * @GST_BUFFERING_LIVE: the stream is a live stream
  -- *
  -- * The different types of buffering methods.
  --

   type GstBufferingMode is
     (GST_BUFFERING_STREAM,
      GST_BUFFERING_DOWNLOAD,
      GST_BUFFERING_TIMESHIFT,
      GST_BUFFERING_LIVE);
   pragma Convention (C, GstBufferingMode);  -- gst/gstquery.h:205

   function gst_query_type_get_name (c_type : GstQueryType) return access GLIB.gchar;  -- gst/gstquery.h:215
   pragma Import (C, gst_query_type_get_name, "gst_query_type_get_name");

   function gst_query_type_to_quark (c_type : GstQueryType) return Glib.GQuark;  -- gst/gstquery.h:216
   pragma Import (C, gst_query_type_to_quark, "gst_query_type_to_quark");

   function gst_query_type_get_flags (c_type : GstQueryType) return GstQueryTypeFlags;  -- gst/gstquery.h:218
   pragma Import (C, gst_query_type_get_flags, "gst_query_type_get_flags");

   function gst_query_get_type return GLIB.GType;  -- gst/gstquery.h:221
   pragma Import (C, gst_query_get_type, "gst_query_get_type");

  -- refcounting
  --*
  -- * gst_query_ref:
  -- * @q: a #GstQuery to increase the refcount of.
  -- *
  -- * Increases the refcount of the given query by one.
  -- *
  -- * Returns: @q
  --

   function gst_query_ref (q : access GstQuery) return access GstQuery;  -- gst/gstquery.h:233
   pragma Import (C, gst_query_ref, "gst_query_ref");

  --*
  -- * gst_query_unref:
  -- * @q: a #GstQuery to decrease the refcount of.
  -- *
  -- * Decreases the refcount of the query. If the refcount reaches 0, the query
  -- * will be freed.
  --

   procedure gst_query_unref (q : access GstQuery);  -- gst/gstquery.h:246
   pragma Import (C, gst_query_unref, "gst_query_unref");

  -- copy query
  --*
  -- * gst_query_copy:
  -- * @q: a #GstQuery to copy.
  -- *
  -- * Copies the given query using the copy function of the parent #GstStructure.
  -- *
  -- * Free-function: gst_query_unref
  -- *
  -- * Returns: (transfer full): a new copy of @q.
  --

   function gst_query_copy (q : access constant GstQuery) return access GstQuery;  -- gst/gstquery.h:263
   pragma Import (C, gst_query_copy, "gst_query_copy");

  --*
  -- * gst_query_is_writable:
  -- * @q: a #GstQuery
  -- *
  -- * Tests if you can safely write data into a query's structure.
  --

  --*
  -- * gst_query_make_writable:
  -- * @q: (transfer full): a #GstQuery to make writable
  -- *
  -- * Makes a writable query from the given query.
  -- *
  -- * Returns: (transfer full): a new writable query (possibly same as @q)
  --

  --*
  -- * gst_query_replace:
  -- * @old_query: (inout) (transfer full) (nullable): pointer to a pointer to a
  -- *     #GstQuery to be replaced.
  -- * @new_query: (allow-none) (transfer none): pointer to a #GstQuery that will
  -- *     replace the query pointed to by @old_query.
  -- *
  -- * Modifies a pointer to a #GstQuery to point to a different #GstQuery. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * query is unreffed, the new one is reffed).
  -- *
  -- * Either @new_query or the #GstQuery pointed to by @old_query may be %NULL.
  -- *
  -- * Returns: %TRUE if @new_query was different from @old_query
  --

   function gst_query_replace (old_query : System.Address; new_query : access GstQuery) return GLIB.gboolean;  -- gst/gstquery.h:301
   pragma Import (C, gst_query_replace, "gst_query_replace");

  -- application specific query
   function gst_query_new_custom (c_type : GstQueryType; structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return access GstQuery;  -- gst/gstquery.h:307
   pragma Import (C, gst_query_new_custom, "gst_query_new_custom");

   function gst_query_get_structure (query : access GstQuery) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstquery.h:309
   pragma Import (C, gst_query_get_structure, "gst_query_get_structure");

   function gst_query_writable_structure (query : access GstQuery) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstquery.h:310
   pragma Import (C, gst_query_writable_structure, "gst_query_writable_structure");

  -- position query
   function gst_query_new_position (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:313
   pragma Import (C, gst_query_new_position, "gst_query_new_position");

   procedure gst_query_set_position
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      cur : GLIB.gint64);  -- gst/gstquery.h:314
   pragma Import (C, gst_query_set_position, "gst_query_set_position");

   procedure gst_query_parse_position
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64);  -- gst/gstquery.h:315
   pragma Import (C, gst_query_parse_position, "gst_query_parse_position");

  -- duration query
   function gst_query_new_duration (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:318
   pragma Import (C, gst_query_new_duration, "gst_query_new_duration");

   procedure gst_query_set_duration
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64);  -- gst/gstquery.h:319
   pragma Import (C, gst_query_set_duration, "gst_query_set_duration");

   procedure gst_query_parse_duration
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64);  -- gst/gstquery.h:320
   pragma Import (C, gst_query_parse_duration, "gst_query_parse_duration");

  -- latency query
   function gst_query_new_latency return access GstQuery;  -- gst/gstquery.h:323
   pragma Import (C, gst_query_new_latency, "gst_query_new_latency");

   procedure gst_query_set_latency
     (query : access GstQuery;
      live : GLIB.gboolean;
      min_latency : GLIB.guint64;
      max_latency : GLIB.guint64);  -- gst/gstquery.h:324
   pragma Import (C, gst_query_set_latency, "gst_query_set_latency");

   procedure gst_query_parse_latency
     (query : access GstQuery;
      live : access GLIB.gboolean;
      min_latency : access GLIB.guint64;
      max_latency : access GLIB.guint64);  -- gst/gstquery.h:326
   pragma Import (C, gst_query_parse_latency, "gst_query_parse_latency");

  -- convert query
   function gst_query_new_convert
     (src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:330
   pragma Import (C, gst_query_new_convert, "gst_query_new_convert");

   procedure gst_query_set_convert
     (query : access GstQuery;
      src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_value : GLIB.gint64);  -- gst/gstquery.h:331
   pragma Import (C, gst_query_set_convert, "gst_query_set_convert");

   procedure gst_query_parse_convert
     (query : access GstQuery;
      src_format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_value : access GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64);  -- gst/gstquery.h:333
   pragma Import (C, gst_query_parse_convert, "gst_query_parse_convert");

  -- segment query
   function gst_query_new_segment (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:336
   pragma Import (C, gst_query_new_segment, "gst_query_new_segment");

   procedure gst_query_set_segment
     (query : access GstQuery;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      start_value : GLIB.gint64;
      stop_value : GLIB.gint64);  -- gst/gstquery.h:337
   pragma Import (C, gst_query_set_segment, "gst_query_set_segment");

   procedure gst_query_parse_segment
     (query : access GstQuery;
      rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      start_value : access GLIB.gint64;
      stop_value : access GLIB.gint64);  -- gst/gstquery.h:339
   pragma Import (C, gst_query_parse_segment, "gst_query_parse_segment");

  -- seeking query
   function gst_query_new_seeking (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:343
   pragma Import (C, gst_query_new_seeking, "gst_query_new_seeking");

   procedure gst_query_set_seeking
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      seekable : GLIB.gboolean;
      segment_start : GLIB.gint64;
      segment_end : GLIB.gint64);  -- gst/gstquery.h:344
   pragma Import (C, gst_query_set_seeking, "gst_query_set_seeking");

   procedure gst_query_parse_seeking
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      seekable : access GLIB.gboolean;
      segment_start : access GLIB.gint64;
      segment_end : access GLIB.gint64);  -- gst/gstquery.h:348
   pragma Import (C, gst_query_parse_seeking, "gst_query_parse_seeking");

  -- formats query
   function gst_query_new_formats return access GstQuery;  -- gst/gstquery.h:353
   pragma Import (C, gst_query_new_formats, "gst_query_new_formats");

   procedure gst_query_set_formats (query : access GstQuery; n_formats : GLIB.gint  -- , ...
      );  -- gst/gstquery.h:354
   pragma Import (C, gst_query_set_formats, "gst_query_set_formats");

   procedure gst_query_set_formatsv
     (query : access GstQuery;
      n_formats : GLIB.gint;
      formats : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat);  -- gst/gstquery.h:355
   pragma Import (C, gst_query_set_formatsv, "gst_query_set_formatsv");

   procedure gst_query_parse_n_formats (query : access GstQuery; n_formats : access GLIB.guint);  -- gst/gstquery.h:356
   pragma Import (C, gst_query_parse_n_formats, "gst_query_parse_n_formats");

   procedure gst_query_parse_nth_format
     (query : access GstQuery;
      nth : GLIB.guint;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat);  -- gst/gstquery.h:357
   pragma Import (C, gst_query_parse_nth_format, "gst_query_parse_nth_format");

  -- buffering query
   function gst_query_new_buffering (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:360
   pragma Import (C, gst_query_new_buffering, "gst_query_new_buffering");

   procedure gst_query_set_buffering_percent
     (query : access GstQuery;
      busy : GLIB.gboolean;
      percent : GLIB.gint);  -- gst/gstquery.h:361
   pragma Import (C, gst_query_set_buffering_percent, "gst_query_set_buffering_percent");

   procedure gst_query_parse_buffering_percent
     (query : access GstQuery;
      busy : access GLIB.gboolean;
      percent : access GLIB.gint);  -- gst/gstquery.h:362
   pragma Import (C, gst_query_parse_buffering_percent, "gst_query_parse_buffering_percent");

   procedure gst_query_set_buffering_stats
     (query : access GstQuery;
      mode : GstBufferingMode;
      avg_in : GLIB.gint;
      avg_out : GLIB.gint;
      buffering_left : GLIB.gint64);  -- gst/gstquery.h:364
   pragma Import (C, gst_query_set_buffering_stats, "gst_query_set_buffering_stats");

   procedure gst_query_parse_buffering_stats
     (query : access GstQuery;
      mode : access GstBufferingMode;
      avg_in : access GLIB.gint;
      avg_out : access GLIB.gint;
      buffering_left : access GLIB.gint64);  -- gst/gstquery.h:367
   pragma Import (C, gst_query_parse_buffering_stats, "gst_query_parse_buffering_stats");

   procedure gst_query_set_buffering_range
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      estimated_total : GLIB.gint64);  -- gst/gstquery.h:371
   pragma Import (C, gst_query_set_buffering_range, "gst_query_set_buffering_range");

   procedure gst_query_parse_buffering_range
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      start : access GLIB.gint64;
      stop : access GLIB.gint64;
      estimated_total : access GLIB.gint64);  -- gst/gstquery.h:374
   pragma Import (C, gst_query_parse_buffering_range, "gst_query_parse_buffering_range");

   function gst_query_add_buffering_range
     (query : access GstQuery;
      start : GLIB.gint64;
      stop : GLIB.gint64) return GLIB.gboolean;  -- gst/gstquery.h:378
   pragma Import (C, gst_query_add_buffering_range, "gst_query_add_buffering_range");

   function gst_query_get_n_buffering_ranges (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:380
   pragma Import (C, gst_query_get_n_buffering_ranges, "gst_query_get_n_buffering_ranges");

   function gst_query_parse_nth_buffering_range
     (query : access GstQuery;
      index : GLIB.guint;
      start : access GLIB.gint64;
      stop : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstquery.h:381
   pragma Import (C, gst_query_parse_nth_buffering_range, "gst_query_parse_nth_buffering_range");

  -- URI query
   function gst_query_new_uri return access GstQuery;  -- gst/gstquery.h:386
   pragma Import (C, gst_query_new_uri, "gst_query_new_uri");

   procedure gst_query_parse_uri (query : access GstQuery; uri : System.Address);  -- gst/gstquery.h:387
   pragma Import (C, gst_query_parse_uri, "gst_query_parse_uri");

   procedure gst_query_set_uri (query : access GstQuery; uri : access GLIB.gchar);  -- gst/gstquery.h:388
   pragma Import (C, gst_query_set_uri, "gst_query_set_uri");

   procedure gst_query_parse_uri_redirection (query : access GstQuery; uri : System.Address);  -- gst/gstquery.h:389
   pragma Import (C, gst_query_parse_uri_redirection, "gst_query_parse_uri_redirection");

   procedure gst_query_set_uri_redirection (query : access GstQuery; uri : access GLIB.gchar);  -- gst/gstquery.h:390
   pragma Import (C, gst_query_set_uri_redirection, "gst_query_set_uri_redirection");

   procedure gst_query_parse_uri_redirection_permanent (query : access GstQuery; permanent : access GLIB.gboolean);  -- gst/gstquery.h:391
   pragma Import (C, gst_query_parse_uri_redirection_permanent, "gst_query_parse_uri_redirection_permanent");

   procedure gst_query_set_uri_redirection_permanent (query : access GstQuery; permanent : GLIB.gboolean);  -- gst/gstquery.h:392
   pragma Import (C, gst_query_set_uri_redirection_permanent, "gst_query_set_uri_redirection_permanent");

  -- allocation query
   function gst_query_new_allocation (caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps; need_pool : GLIB.gboolean) return access GstQuery;  -- gst/gstquery.h:395
   pragma Import (C, gst_query_new_allocation, "gst_query_new_allocation");

   procedure gst_query_parse_allocation
     (query : access GstQuery;
      caps : System.Address;
      need_pool : access GLIB.gboolean);  -- gst/gstquery.h:396
   pragma Import (C, gst_query_parse_allocation, "gst_query_parse_allocation");

  -- pools
   procedure gst_query_add_allocation_pool
     (query : access GstQuery;
      pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h.GstBufferPool;
      size : GLIB.guint;
      min_buffers : GLIB.guint;
      max_buffers : GLIB.guint);  -- gst/gstquery.h:399
   pragma Import (C, gst_query_add_allocation_pool, "gst_query_add_allocation_pool");

   function gst_query_get_n_allocation_pools (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:402
   pragma Import (C, gst_query_get_n_allocation_pools, "gst_query_get_n_allocation_pools");

   procedure gst_query_parse_nth_allocation_pool
     (query : access GstQuery;
      index : GLIB.guint;
      pool : System.Address;
      size : access GLIB.guint;
      min_buffers : access GLIB.guint;
      max_buffers : access GLIB.guint);  -- gst/gstquery.h:403
   pragma Import (C, gst_query_parse_nth_allocation_pool, "gst_query_parse_nth_allocation_pool");

   procedure gst_query_set_nth_allocation_pool
     (query : access GstQuery;
      index : GLIB.guint;
      pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h.GstBufferPool;
      size : GLIB.guint;
      min_buffers : GLIB.guint;
      max_buffers : GLIB.guint);  -- gst/gstquery.h:407
   pragma Import (C, gst_query_set_nth_allocation_pool, "gst_query_set_nth_allocation_pool");

   procedure gst_query_remove_nth_allocation_pool (query : access GstQuery; index : GLIB.guint);  -- gst/gstquery.h:411
   pragma Import (C, gst_query_remove_nth_allocation_pool, "gst_query_remove_nth_allocation_pool");

  -- allocators
   procedure gst_query_add_allocation_param
     (query : access GstQuery;
      allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocator;
      params : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/gstquery.h:414
   pragma Import (C, gst_query_add_allocation_param, "gst_query_add_allocation_param");

   function gst_query_get_n_allocation_params (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:416
   pragma Import (C, gst_query_get_n_allocation_params, "gst_query_get_n_allocation_params");

   procedure gst_query_parse_nth_allocation_param
     (query : access GstQuery;
      index : GLIB.guint;
      allocator : System.Address;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/gstquery.h:417
   pragma Import (C, gst_query_parse_nth_allocation_param, "gst_query_parse_nth_allocation_param");

   procedure gst_query_set_nth_allocation_param
     (query : access GstQuery;
      index : GLIB.guint;
      allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocator;
      params : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/gstquery.h:420
   pragma Import (C, gst_query_set_nth_allocation_param, "gst_query_set_nth_allocation_param");

   procedure gst_query_remove_nth_allocation_param (query : access GstQuery; index : GLIB.guint);  -- gst/gstquery.h:423
   pragma Import (C, gst_query_remove_nth_allocation_param, "gst_query_remove_nth_allocation_param");

  -- metadata
   procedure gst_query_add_allocation_meta
     (query : access GstQuery;
      api : GLIB.GType;
      params : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure);  -- gst/gstquery.h:426
   pragma Import (C, gst_query_add_allocation_meta, "gst_query_add_allocation_meta");

   function gst_query_get_n_allocation_metas (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:427
   pragma Import (C, gst_query_get_n_allocation_metas, "gst_query_get_n_allocation_metas");

   function gst_query_parse_nth_allocation_meta
     (query : access GstQuery;
      index : GLIB.guint;
      params : System.Address) return GLIB.GType;  -- gst/gstquery.h:428
   pragma Import (C, gst_query_parse_nth_allocation_meta, "gst_query_parse_nth_allocation_meta");

   procedure gst_query_remove_nth_allocation_meta (query : access GstQuery; index : GLIB.guint);  -- gst/gstquery.h:430
   pragma Import (C, gst_query_remove_nth_allocation_meta, "gst_query_remove_nth_allocation_meta");

   function gst_query_find_allocation_meta
     (query : access GstQuery;
      api : GLIB.GType;
      index : access GLIB.guint) return GLIB.gboolean;  -- gst/gstquery.h:431
   pragma Import (C, gst_query_find_allocation_meta, "gst_query_find_allocation_meta");

  -- scheduling query
  --*
  -- * GstSchedulingFlags:
  -- * @GST_SCHEDULING_FLAG_SEEKABLE: if seeking is possible
  -- * @GST_SCHEDULING_FLAG_SEQUENTIAL: if sequential access is recommended
  -- * @GST_SCHEDULING_FLAG_BANDWIDTH_LIMITED: if bandwidth is limited and buffering possible (since 1.2)
  -- *
  -- * The different scheduling flags.
  --

   subtype GstSchedulingFlags is unsigned;
   GST_SCHEDULING_FLAG_SEEKABLE : constant GstSchedulingFlags := 1;
   GST_SCHEDULING_FLAG_SEQUENTIAL : constant GstSchedulingFlags := 2;
   GST_SCHEDULING_FLAG_BANDWIDTH_LIMITED : constant GstSchedulingFlags := 4;  -- gst/gstquery.h:447

   function gst_query_new_scheduling return access GstQuery;  -- gst/gstquery.h:449
   pragma Import (C, gst_query_new_scheduling, "gst_query_new_scheduling");

   procedure gst_query_set_scheduling
     (query : access GstQuery;
      flags : GstSchedulingFlags;
      minsize : GLIB.gint;
      maxsize : GLIB.gint;
      align : GLIB.gint);  -- gst/gstquery.h:451
   pragma Import (C, gst_query_set_scheduling, "gst_query_set_scheduling");

   procedure gst_query_parse_scheduling
     (query : access GstQuery;
      flags : access GstSchedulingFlags;
      minsize : access GLIB.gint;
      maxsize : access GLIB.gint;
      align : access GLIB.gint);  -- gst/gstquery.h:453
   pragma Import (C, gst_query_parse_scheduling, "gst_query_parse_scheduling");

   procedure gst_query_add_scheduling_mode (query : access GstQuery; mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode);  -- gst/gstquery.h:456
   pragma Import (C, gst_query_add_scheduling_mode, "gst_query_add_scheduling_mode");

   function gst_query_get_n_scheduling_modes (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:457
   pragma Import (C, gst_query_get_n_scheduling_modes, "gst_query_get_n_scheduling_modes");

   function gst_query_parse_nth_scheduling_mode (query : access GstQuery; index : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode;  -- gst/gstquery.h:458
   pragma Import (C, gst_query_parse_nth_scheduling_mode, "gst_query_parse_nth_scheduling_mode");

   function gst_query_has_scheduling_mode (query : access GstQuery; mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode) return GLIB.gboolean;  -- gst/gstquery.h:459
   pragma Import (C, gst_query_has_scheduling_mode, "gst_query_has_scheduling_mode");

   function gst_query_has_scheduling_mode_with_flags
     (query : access GstQuery;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode;
      flags : GstSchedulingFlags) return GLIB.gboolean;  -- gst/gstquery.h:460
   pragma Import (C, gst_query_has_scheduling_mode_with_flags, "gst_query_has_scheduling_mode_with_flags");

  -- accept-caps query
   function gst_query_new_accept_caps (caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GstQuery;  -- gst/gstquery.h:464
   pragma Import (C, gst_query_new_accept_caps, "gst_query_new_accept_caps");

   procedure gst_query_parse_accept_caps (query : access GstQuery; caps : System.Address);  -- gst/gstquery.h:465
   pragma Import (C, gst_query_parse_accept_caps, "gst_query_parse_accept_caps");

   procedure gst_query_set_accept_caps_result (query : access GstQuery; result : GLIB.gboolean);  -- gst/gstquery.h:466
   pragma Import (C, gst_query_set_accept_caps_result, "gst_query_set_accept_caps_result");

   procedure gst_query_parse_accept_caps_result (query : access GstQuery; result : access GLIB.gboolean);  -- gst/gstquery.h:467
   pragma Import (C, gst_query_parse_accept_caps_result, "gst_query_parse_accept_caps_result");

  -- caps query
   function gst_query_new_caps (filter : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GstQuery;  -- gst/gstquery.h:470
   pragma Import (C, gst_query_new_caps, "gst_query_new_caps");

   procedure gst_query_parse_caps (query : access GstQuery; filter : System.Address);  -- gst/gstquery.h:471
   pragma Import (C, gst_query_parse_caps, "gst_query_parse_caps");

   procedure gst_query_set_caps_result (query : access GstQuery; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/gstquery.h:473
   pragma Import (C, gst_query_set_caps_result, "gst_query_set_caps_result");

   procedure gst_query_parse_caps_result (query : access GstQuery; caps : System.Address);  -- gst/gstquery.h:474
   pragma Import (C, gst_query_parse_caps_result, "gst_query_parse_caps_result");

  -- drain query
   function gst_query_new_drain return access GstQuery;  -- gst/gstquery.h:477
   pragma Import (C, gst_query_new_drain, "gst_query_new_drain");

  -- context query
   function gst_query_new_context (context_type : access GLIB.gchar) return access GstQuery;  -- gst/gstquery.h:480
   pragma Import (C, gst_query_new_context, "gst_query_new_context");

   function gst_query_parse_context_type (query : access GstQuery; context_type : System.Address) return GLIB.gboolean;  -- gst/gstquery.h:481
   pragma Import (C, gst_query_parse_context_type, "gst_query_parse_context_type");

   procedure gst_query_set_context (query : access GstQuery; context : System.Address);  -- gst/gstquery.h:482
   pragma Import (C, gst_query_set_context, "gst_query_set_context");

   procedure gst_query_parse_context (query : access GstQuery; context : System.Address);  -- gst/gstquery.h:483
   pragma Import (C, gst_query_parse_context, "gst_query_parse_context");

   procedure glib_autoptr_cleanup_GstQuery (u_ptr : System.Address);  -- gst/gstquery.h:486
   pragma Import (C, glib_autoptr_cleanup_GstQuery, "glib_autoptr_cleanup_GstQuery");

   type GstQuery_autoptr is access all GstQuery;  -- gst/gstquery.h:486

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
