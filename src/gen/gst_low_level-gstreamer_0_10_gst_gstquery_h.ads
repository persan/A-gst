pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gstquery_h is

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
   pragma Convention (C, GstQueryType);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:73

   type GstBufferingMode is 
     (GST_BUFFERING_STREAM,
      GST_BUFFERING_DOWNLOAD,
      GST_BUFFERING_TIMESHIFT,
      GST_BUFFERING_LIVE);
   pragma Convention (C, GstBufferingMode);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:89

   type GstQueryTypeDefinition;
   --subtype GstQueryTypeDefinition is u_GstQueryTypeDefinition;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:91

   type GstQuery;
   --subtype GstQuery is u_GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:92

   type GstQueryClass;
   type anon12334_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstQueryClass is u_GstQueryClass;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:93

   type GstQueryTypeDefinition is record
      value : aliased GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:106
      nick : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:107
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:108
      quark : aliased GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstQueryTypeDefinition);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:104

   type GstQuery is record
      mini_object : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:150
      c_type : aliased GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:153
      structure : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:155
      u_gst_reserved : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:158
   end record;
   pragma Convention (C_Pass_By_Copy, GstQuery);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:148

   type GstQueryClass is record
      mini_object_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:162
      u_gst_reserved : anon12334_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, GstQueryClass);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:161

   function gst_query_type_get_name (arg1 : GstQueryType) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:168
   pragma Import (C, gst_query_type_get_name, "gst_query_type_get_name");

   function gst_query_type_to_quark (arg1 : GstQueryType) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:169
   pragma Import (C, gst_query_type_to_quark, "gst_query_type_to_quark");

   function gst_query_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:171
   pragma Import (C, gst_query_get_type, "gst_query_get_type");

   function gst_query_type_register (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:174
   pragma Import (C, gst_query_type_register, "gst_query_type_register");

   function gst_query_type_get_by_nick (arg1 : access GLIB.gchar) return GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:176
   pragma Import (C, gst_query_type_get_by_nick, "gst_query_type_get_by_nick");

   function gst_query_types_contains (arg1 : access GstQueryType; arg2 : GstQueryType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:179
   pragma Import (C, gst_query_types_contains, "gst_query_types_contains");

   function gst_query_type_get_details (arg1 : GstQueryType) return access constant GstQueryTypeDefinition;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:185
   pragma Import (C, gst_query_type_get_details, "gst_query_type_get_details");

   function gst_query_type_iterate_definitions return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:186
   pragma Import (C, gst_query_type_iterate_definitions, "gst_query_type_iterate_definitions");

   function gst_query_ref (q : access GstQuery) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:202
   pragma Import (C, gst_query_ref, "gst_query_ref");

   procedure gst_query_unref (q : access GstQuery);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:219
   pragma Import (C, gst_query_unref, "gst_query_unref");

   function gst_query_copy (q : access constant GstQuery) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:240
   pragma Import (C, gst_query_copy, "gst_query_copy");

   function gst_query_new_position (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:256
   pragma Import (C, gst_query_new_position, "gst_query_new_position");

   procedure gst_query_set_position
     (arg1 : access GstQuery;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:257
   pragma Import (C, gst_query_set_position, "gst_query_set_position");

   procedure gst_query_parse_position
     (arg1 : access GstQuery;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:258
   pragma Import (C, gst_query_parse_position, "gst_query_parse_position");

   function gst_query_new_duration (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:261
   pragma Import (C, gst_query_new_duration, "gst_query_new_duration");

   procedure gst_query_set_duration
     (arg1 : access GstQuery;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:262
   pragma Import (C, gst_query_set_duration, "gst_query_set_duration");

   procedure gst_query_parse_duration
     (arg1 : access GstQuery;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:263
   pragma Import (C, gst_query_parse_duration, "gst_query_parse_duration");

   function gst_query_new_latency return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:266
   pragma Import (C, gst_query_new_latency, "gst_query_new_latency");

   procedure gst_query_set_latency
     (arg1 : access GstQuery;
      arg2 : GLIB.gboolean;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:267
   pragma Import (C, gst_query_set_latency, "gst_query_set_latency");

   procedure gst_query_parse_latency
     (arg1 : access GstQuery;
      arg2 : access GLIB.gboolean;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:269
   pragma Import (C, gst_query_parse_latency, "gst_query_parse_latency");

   function gst_query_new_convert
     (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg2 : GLIB.gint64;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:273
   pragma Import (C, gst_query_new_convert, "gst_query_new_convert");

   procedure gst_query_set_convert
     (arg1 : access GstQuery;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:274
   pragma Import (C, gst_query_set_convert, "gst_query_set_convert");

   procedure gst_query_parse_convert
     (arg1 : access GstQuery;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:276
   pragma Import (C, gst_query_parse_convert, "gst_query_parse_convert");

   function gst_query_new_segment (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:279
   pragma Import (C, gst_query_new_segment, "gst_query_new_segment");

   procedure gst_query_set_segment
     (arg1 : access GstQuery;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : GLIB.gint64;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:280
   pragma Import (C, gst_query_set_segment, "gst_query_set_segment");

   procedure gst_query_parse_segment
     (arg1 : access GstQuery;
      arg2 : access GLIB.gdouble;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : access GLIB.gint64;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:282
   pragma Import (C, gst_query_parse_segment, "gst_query_parse_segment");

   function gst_query_new_application (arg1 : GstQueryType; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:286
   pragma Import (C, gst_query_new_application, "gst_query_new_application");

   function gst_query_get_structure (arg1 : access GstQuery) return access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:288
   pragma Import (C, gst_query_get_structure, "gst_query_get_structure");

   function gst_query_new_seeking (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:291
   pragma Import (C, gst_query_new_seeking, "gst_query_new_seeking");

   procedure gst_query_set_seeking
     (arg1 : access GstQuery;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gboolean;
      arg4 : GLIB.gint64;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:292
   pragma Import (C, gst_query_set_seeking, "gst_query_set_seeking");

   procedure gst_query_parse_seeking
     (arg1 : access GstQuery;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gboolean;
      arg4 : access GLIB.gint64;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:296
   pragma Import (C, gst_query_parse_seeking, "gst_query_parse_seeking");

   function gst_query_new_formats return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:301
   pragma Import (C, gst_query_new_formats, "gst_query_new_formats");

   procedure gst_query_set_formats (arg1 : access GstQuery; arg2 : GLIB.gint  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstquery.h:302
   pragma Import (C, gst_query_set_formats, "gst_query_set_formats");

   procedure gst_query_set_formatsv
     (arg1 : access GstQuery;
      arg2 : GLIB.gint;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:303
   pragma Import (C, gst_query_set_formatsv, "gst_query_set_formatsv");

   procedure gst_query_parse_formats_length (arg1 : access GstQuery; arg2 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:304
   pragma Import (C, gst_query_parse_formats_length, "gst_query_parse_formats_length");

   procedure gst_query_parse_formats_nth
     (arg1 : access GstQuery;
      arg2 : GLIB.guint;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:305
   pragma Import (C, gst_query_parse_formats_nth, "gst_query_parse_formats_nth");

   function gst_query_new_buffering (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:308
   pragma Import (C, gst_query_new_buffering, "gst_query_new_buffering");

   procedure gst_query_set_buffering_percent
     (arg1 : access GstQuery;
      arg2 : GLIB.gboolean;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:309
   pragma Import (C, gst_query_set_buffering_percent, "gst_query_set_buffering_percent");

   procedure gst_query_parse_buffering_percent
     (arg1 : access GstQuery;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:310
   pragma Import (C, gst_query_parse_buffering_percent, "gst_query_parse_buffering_percent");

   procedure gst_query_set_buffering_stats
     (arg1 : access GstQuery;
      arg2 : GstBufferingMode;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:312
   pragma Import (C, gst_query_set_buffering_stats, "gst_query_set_buffering_stats");

   procedure gst_query_parse_buffering_stats
     (arg1 : access GstQuery;
      arg2 : access GstBufferingMode;
      arg3 : access GLIB.gint;
      arg4 : access GLIB.gint;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:315
   pragma Import (C, gst_query_parse_buffering_stats, "gst_query_parse_buffering_stats");

   procedure gst_query_set_buffering_range
     (arg1 : access GstQuery;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GLIB.gint64;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:319
   pragma Import (C, gst_query_set_buffering_range, "gst_query_set_buffering_range");

   procedure gst_query_parse_buffering_range
     (arg1 : access GstQuery;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64;
      arg4 : access GLIB.gint64;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:322
   pragma Import (C, gst_query_parse_buffering_range, "gst_query_parse_buffering_range");

   function gst_query_add_buffering_range
     (arg1 : access GstQuery;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:325
   pragma Import (C, gst_query_add_buffering_range, "gst_query_add_buffering_range");

   function gst_query_get_n_buffering_ranges (arg1 : access GstQuery) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:328
   pragma Import (C, gst_query_get_n_buffering_ranges, "gst_query_get_n_buffering_ranges");

   function gst_query_parse_nth_buffering_range
     (arg1 : access GstQuery;
      arg2 : GLIB.guint;
      arg3 : access GLIB.gint64;
      arg4 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:330
   pragma Import (C, gst_query_parse_nth_buffering_range, "gst_query_parse_nth_buffering_range");

   function gst_query_new_uri return access GstQuery;  -- /usr/include/gstreamer-0.10/gst/gstquery.h:335
   pragma Import (C, gst_query_new_uri, "gst_query_new_uri");

   procedure gst_query_parse_uri (arg1 : access GstQuery; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:336
   pragma Import (C, gst_query_parse_uri, "gst_query_parse_uri");

   procedure gst_query_set_uri (arg1 : access GstQuery; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstquery.h:337
   pragma Import (C, gst_query_set_uri, "gst_query_set_uri");

end GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
