pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h is

   --  unsupported macro: GST_TYPE_QUERY (gst_query_get_type())
   --  arg-macro: function GST_IS_QUERY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_QUERY);
   --  arg-macro: function GST_IS_QUERY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_QUERY);
   --  arg-macro: function GST_QUERY_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_QUERY, GstQueryClass);
   --  arg-macro: function GST_QUERY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_QUERY, GstQuery);
   --  arg-macro: function GST_QUERY_CAST (obj)
   --    return (GstQuery*)(obj);
   --  arg-macro: function GST_QUERY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_QUERY, GstQueryClass);
   --  arg-macro: function GST_QUERY_TYPE (query)
   --    return ((GstQuery*)(query)).type;
   --  arg-macro: function GST_QUERY_TYPE_NAME (query)
   --    return gst_query_type_get_name(GST_QUERY_TYPE(query));
   --  arg-macro: procedure gst_query_make_writable (q)
   --    GST_QUERY_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (q)))
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstQueryType:
  -- * @GST_QUERY_NONE: invalid query type
  -- * @GST_QUERY_POSITION: current position in stream
  -- * @GST_QUERY_DURATION: total duration of the stream
  -- * @GST_QUERY_LATENCY: latency of stream
  -- * @GST_QUERY_JITTER: current jitter of stream
  -- * @GST_QUERY_RATE: current rate of the stream
  -- * @GST_QUERY_SEEKING: seeking capabilities
  -- * @GST_QUERY_SEGMENT: segment start/stop positions
  -- * @GST_QUERY_CONVERT: convert values between formats
  -- * @GST_QUERY_FORMATS: query supported formats for convert
  -- * @GST_QUERY_BUFFERING: query available media for efficient seeking. Since
  -- * 0.10.20.
  -- * @GST_QUERY_CUSTOM: a custom application or element defined query. Since
  -- * 0.10.22.
  -- * @GST_QUERY_URI: query the URI of the source or sink. Since 0.10.22.
  -- *
  -- * Standard predefined Query types
  --  

  -- NOTE: don't forget to update the table in gstquery.c when changing
  -- * this enum  

  -- not in draft-query, necessary?  
   type GstQueryType is 
     (GST_QUERY_NONE,
      GST_QUERY_POSITION,
      GST_QUERY_DURATION,
      GST_QUERY_LATENCY,
      GST_QUERY_JITTER,
      GST_QUERY_RATE,
      GST_QUERY_SEEKING,
      GST_QUERY_SEGMENT,
      GST_QUERY_CONVERT,
      GST_QUERY_FORMATS,
      GST_QUERY_BUFFERING,
      GST_QUERY_CUSTOM,
      GST_QUERY_URI);
   pragma Convention (C, GstQueryType);  -- gst/gstquery.h:73

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
   pragma Convention (C, GstBufferingMode);  -- gst/gstquery.h:89

   type GstQueryTypeDefinition;
   --subtype GstQueryTypeDefinition is u_GstQueryTypeDefinition;  -- gst/gstquery.h:91

   type GstQuery;
   --subtype GstQuery is u_GstQuery;  -- gst/gstquery.h:92

   type GstQueryClass;
   type u_GstQueryClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstQueryClass is u_GstQueryClass;  -- gst/gstquery.h:93

  --*
  -- * GstQueryTypeDefinition:
  -- * @value: the unique id of the Query type
  -- * @nick: a short nick
  -- * @description: a longer description of the query type
  -- * @quark: the quark for the nick
  -- *
  -- * A Query Type definition
  --  

   type GstQueryTypeDefinition is record
      value : aliased GstQueryType;  -- gst/gstquery.h:106
      nick : access GLIB.gchar;  -- gst/gstquery.h:107
      description : access GLIB.gchar;  -- gst/gstquery.h:108
      quark : aliased Glib.GQuark;  -- gst/gstquery.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstQueryTypeDefinition);  -- gst/gstquery.h:104

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
  -- *
  -- * Since: 0.10.4
  --  

  --*
  -- * GstQuery:
  -- * @mini_object: The parent #GstMiniObject type
  -- * @type: the #GstQueryType
  -- * @structure: the #GstStructure containing the query details.
  -- *
  -- * The #GstQuery structure.
  --  

   type GstQuery is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- gst/gstquery.h:150
      c_type : aliased GstQueryType;  -- gst/gstquery.h:153
      structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstquery.h:155
      u_gst_reserved : System.Address;  -- gst/gstquery.h:158
   end record;
   pragma Convention (C_Pass_By_Copy, GstQuery);  -- gst/gstquery.h:148

  --< public >  
  -- with COW  
  --< private > 
   type GstQueryClass is record
      mini_object_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/gstquery.h:162
      u_gst_reserved : u_GstQueryClass_u_gst_reserved_array;  -- gst/gstquery.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, GstQueryClass);  -- gst/gstquery.h:161

  --< private > 
   function gst_query_type_get_name (query : GstQueryType) return access GLIB.gchar;  -- gst/gstquery.h:168
   pragma Import (C, gst_query_type_get_name, "gst_query_type_get_name");

   function gst_query_type_to_quark (query : GstQueryType) return Glib.GQuark;  -- gst/gstquery.h:169
   pragma Import (C, gst_query_type_to_quark, "gst_query_type_to_quark");

   function gst_query_get_type return GLIB.GType;  -- gst/gstquery.h:171
   pragma Import (C, gst_query_get_type, "gst_query_get_type");

  -- register a new query  
   function gst_query_type_register (nick : access GLIB.gchar; description : access GLIB.gchar) return GstQueryType;  -- gst/gstquery.h:174
   pragma Import (C, gst_query_type_register, "gst_query_type_register");

   function gst_query_type_get_by_nick (nick : access GLIB.gchar) return GstQueryType;  -- gst/gstquery.h:176
   pragma Import (C, gst_query_type_get_by_nick, "gst_query_type_get_by_nick");

  -- check if a query is in an array of querys  
   function gst_query_types_contains (types : access GstQueryType; c_type : GstQueryType) return GLIB.gboolean;  -- gst/gstquery.h:179
   pragma Import (C, gst_query_types_contains, "gst_query_types_contains");

  -- query for query details  
   function gst_query_type_get_details (c_type : GstQueryType) return access constant GstQueryTypeDefinition;  -- gst/gstquery.h:185
   pragma Import (C, gst_query_type_get_details, "gst_query_type_get_details");

   function gst_query_type_iterate_definitions return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstquery.h:186
   pragma Import (C, gst_query_type_iterate_definitions, "gst_query_type_iterate_definitions");

  -- refcounting  
  --*
  -- * gst_query_ref:
  -- * @q: a #GstQuery to increase the refcount of.
  -- *
  -- * Increases the refcount of the given query by one.
  -- *
  -- * Returns: @q
  --  

   function gst_query_ref (q : access GstQuery) return access GstQuery;  -- gst/gstquery.h:202
   pragma Import (C, gst_query_ref, "gst_query_ref");

  --*
  -- * gst_query_unref:
  -- * @q: a #GstQuery to decrease the refcount of.
  -- *
  -- * Decreases the refcount of the query. If the refcount reaches 0, the query
  -- * will be freed.
  --  

   procedure gst_query_unref (q : access GstQuery);  -- gst/gstquery.h:219
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

   function gst_query_copy (q : access constant GstQuery) return access GstQuery;  -- gst/gstquery.h:240
   pragma Import (C, gst_query_copy, "gst_query_copy");

  --*
  -- * gst_query_make_writable:
  -- * @q: (transfer full): a #GstQuery to make writable
  -- *
  -- * Makes a writable query from the given query.
  -- *
  -- * Returns: (transfer full): a new writable query (possibly same as @q)
  --  

  -- position query  
   function gst_query_new_position (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:256
   pragma Import (C, gst_query_new_position, "gst_query_new_position");

   procedure gst_query_set_position
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      cur : GLIB.gint64);  -- gst/gstquery.h:257
   pragma Import (C, gst_query_set_position, "gst_query_set_position");

   procedure gst_query_parse_position
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64);  -- gst/gstquery.h:258
   pragma Import (C, gst_query_parse_position, "gst_query_parse_position");

  -- duration query  
   function gst_query_new_duration (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:261
   pragma Import (C, gst_query_new_duration, "gst_query_new_duration");

   procedure gst_query_set_duration
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64);  -- gst/gstquery.h:262
   pragma Import (C, gst_query_set_duration, "gst_query_set_duration");

   procedure gst_query_parse_duration
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64);  -- gst/gstquery.h:263
   pragma Import (C, gst_query_parse_duration, "gst_query_parse_duration");

  -- latency query  
   function gst_query_new_latency return access GstQuery;  -- gst/gstquery.h:266
   pragma Import (C, gst_query_new_latency, "gst_query_new_latency");

   procedure gst_query_set_latency
     (query : access GstQuery;
      live : GLIB.gboolean;
      min_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstquery.h:267
   pragma Import (C, gst_query_set_latency, "gst_query_set_latency");

   procedure gst_query_parse_latency
     (query : access GstQuery;
      live : access GLIB.gboolean;
      min_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstquery.h:269
   pragma Import (C, gst_query_parse_latency, "gst_query_parse_latency");

  -- convert query  
   function gst_query_new_convert
     (src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:273
   pragma Import (C, gst_query_new_convert, "gst_query_new_convert");

   procedure gst_query_set_convert
     (query : access GstQuery;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : GLIB.gint64);  -- gst/gstquery.h:274
   pragma Import (C, gst_query_set_convert, "gst_query_set_convert");

   procedure gst_query_parse_convert
     (query : access GstQuery;
      src_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : access GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64);  -- gst/gstquery.h:276
   pragma Import (C, gst_query_parse_convert, "gst_query_parse_convert");

  -- segment query  
   function gst_query_new_segment (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:279
   pragma Import (C, gst_query_new_segment, "gst_query_new_segment");

   procedure gst_query_set_segment
     (query : access GstQuery;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start_value : GLIB.gint64;
      stop_value : GLIB.gint64);  -- gst/gstquery.h:280
   pragma Import (C, gst_query_set_segment, "gst_query_set_segment");

   procedure gst_query_parse_segment
     (query : access GstQuery;
      rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start_value : access GLIB.gint64;
      stop_value : access GLIB.gint64);  -- gst/gstquery.h:282
   pragma Import (C, gst_query_parse_segment, "gst_query_parse_segment");

  -- application specific query  
   function gst_query_new_application (c_type : GstQueryType; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstQuery;  -- gst/gstquery.h:286
   pragma Import (C, gst_query_new_application, "gst_query_new_application");

   function gst_query_get_structure (query : access GstQuery) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstquery.h:288
   pragma Import (C, gst_query_get_structure, "gst_query_get_structure");

  -- seeking query  
   function gst_query_new_seeking (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:291
   pragma Import (C, gst_query_new_seeking, "gst_query_new_seeking");

   procedure gst_query_set_seeking
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      seekable : GLIB.gboolean;
      segment_start : GLIB.gint64;
      segment_end : GLIB.gint64);  -- gst/gstquery.h:292
   pragma Import (C, gst_query_set_seeking, "gst_query_set_seeking");

   procedure gst_query_parse_seeking
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      seekable : access GLIB.gboolean;
      segment_start : access GLIB.gint64;
      segment_end : access GLIB.gint64);  -- gst/gstquery.h:296
   pragma Import (C, gst_query_parse_seeking, "gst_query_parse_seeking");

  -- formats query  
   function gst_query_new_formats return access GstQuery;  -- gst/gstquery.h:301
   pragma Import (C, gst_query_new_formats, "gst_query_new_formats");

   procedure gst_query_set_formats (query : access GstQuery; n_formats : GLIB.gint  -- , ...
      );  -- gst/gstquery.h:302
   pragma Import (C, gst_query_set_formats, "gst_query_set_formats");

   procedure gst_query_set_formatsv
     (query : access GstQuery;
      n_formats : GLIB.gint;
      formats : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- gst/gstquery.h:303
   pragma Import (C, gst_query_set_formatsv, "gst_query_set_formatsv");

   procedure gst_query_parse_formats_length (query : access GstQuery; n_formats : access GLIB.guint);  -- gst/gstquery.h:304
   pragma Import (C, gst_query_parse_formats_length, "gst_query_parse_formats_length");

   procedure gst_query_parse_formats_nth
     (query : access GstQuery;
      nth : GLIB.guint;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- gst/gstquery.h:305
   pragma Import (C, gst_query_parse_formats_nth, "gst_query_parse_formats_nth");

  -- buffering query  
   function gst_query_new_buffering (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- gst/gstquery.h:308
   pragma Import (C, gst_query_new_buffering, "gst_query_new_buffering");

   procedure gst_query_set_buffering_percent
     (query : access GstQuery;
      busy : GLIB.gboolean;
      percent : GLIB.gint);  -- gst/gstquery.h:309
   pragma Import (C, gst_query_set_buffering_percent, "gst_query_set_buffering_percent");

   procedure gst_query_parse_buffering_percent
     (query : access GstQuery;
      busy : access GLIB.gboolean;
      percent : access GLIB.gint);  -- gst/gstquery.h:310
   pragma Import (C, gst_query_parse_buffering_percent, "gst_query_parse_buffering_percent");

   procedure gst_query_set_buffering_stats
     (query : access GstQuery;
      mode : GstBufferingMode;
      avg_in : GLIB.gint;
      avg_out : GLIB.gint;
      buffering_left : GLIB.gint64);  -- gst/gstquery.h:312
   pragma Import (C, gst_query_set_buffering_stats, "gst_query_set_buffering_stats");

   procedure gst_query_parse_buffering_stats
     (query : access GstQuery;
      mode : access GstBufferingMode;
      avg_in : access GLIB.gint;
      avg_out : access GLIB.gint;
      buffering_left : access GLIB.gint64);  -- gst/gstquery.h:315
   pragma Import (C, gst_query_parse_buffering_stats, "gst_query_parse_buffering_stats");

   procedure gst_query_set_buffering_range
     (query : access GstQuery;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      estimated_total : GLIB.gint64);  -- gst/gstquery.h:319
   pragma Import (C, gst_query_set_buffering_range, "gst_query_set_buffering_range");

   procedure gst_query_parse_buffering_range
     (query : access GstQuery;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : access GLIB.gint64;
      stop : access GLIB.gint64;
      estimated_total : access GLIB.gint64);  -- gst/gstquery.h:322
   pragma Import (C, gst_query_parse_buffering_range, "gst_query_parse_buffering_range");

   function gst_query_add_buffering_range
     (query : access GstQuery;
      start : GLIB.gint64;
      stop : GLIB.gint64) return GLIB.gboolean;  -- gst/gstquery.h:325
   pragma Import (C, gst_query_add_buffering_range, "gst_query_add_buffering_range");

   function gst_query_get_n_buffering_ranges (query : access GstQuery) return GLIB.guint;  -- gst/gstquery.h:328
   pragma Import (C, gst_query_get_n_buffering_ranges, "gst_query_get_n_buffering_ranges");

   function gst_query_parse_nth_buffering_range
     (query : access GstQuery;
      index : GLIB.guint;
      start : access GLIB.gint64;
      stop : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstquery.h:330
   pragma Import (C, gst_query_parse_nth_buffering_range, "gst_query_parse_nth_buffering_range");

  -- URI query  
   function gst_query_new_uri return access GstQuery;  -- gst/gstquery.h:335
   pragma Import (C, gst_query_new_uri, "gst_query_new_uri");

   procedure gst_query_parse_uri (query : access GstQuery; uri : System.Address);  -- gst/gstquery.h:336
   pragma Import (C, gst_query_parse_uri, "gst_query_parse_uri");

   procedure gst_query_set_uri (query : access GstQuery; uri : access GLIB.gchar);  -- gst/gstquery.h:337
   pragma Import (C, gst_query_set_uri, "gst_query_set_uri");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
