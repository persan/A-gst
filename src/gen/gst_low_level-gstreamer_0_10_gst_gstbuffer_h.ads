pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with System;
with glib;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;

package GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h is

   GST_BUFFER_TRACE_NAME : aliased constant String := "GstBuffer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstbuffer.h:42
   --  unsupported macro: GST_TYPE_BUFFER (gst_buffer_get_type())
   --  arg-macro: function GST_IS_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_BUFFER);
   --  arg-macro: function GST_IS_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_BUFFER);
   --  arg-macro: function GST_BUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BUFFER, GstBufferClass);
   --  arg-macro: function GST_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_BUFFER, GstBuffer);
   --  arg-macro: function GST_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_BUFFER, GstBufferClass);
   --  arg-macro: function GST_BUFFER_CAST (obj)
   --    return (GstBuffer *)(obj);
   --  arg-macro: procedure GST_BUFFER_FLAGS (buf)
   --    GST_MINI_OBJECT_FLAGS(buf)
   --  arg-macro: procedure GST_BUFFER_FLAG_IS_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_IS_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_UNSET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_UNSET (buf, flag)
   --  arg-macro: function GST_BUFFER_DATA (buf)
   --    return GST_BUFFER_CAST(buf).data;
   --  arg-macro: function GST_BUFFER_SIZE (buf)
   --    return GST_BUFFER_CAST(buf).size;
   --  arg-macro: function GST_BUFFER_TIMESTAMP (buf)
   --    return GST_BUFFER_CAST(buf).timestamp;
   --  arg-macro: function GST_BUFFER_DURATION (buf)
   --    return GST_BUFFER_CAST(buf).duration;
   --  arg-macro: function GST_BUFFER_CAPS (buf)
   --    return GST_BUFFER_CAST(buf).caps;
   --  arg-macro: function GST_BUFFER_OFFSET (buf)
   --    return GST_BUFFER_CAST(buf).offset;
   --  arg-macro: function GST_BUFFER_OFFSET_END (buf)
   --    return GST_BUFFER_CAST(buf).offset_end;
   --  arg-macro: function GST_BUFFER_MALLOCDATA (buf)
   --    return GST_BUFFER_CAST(buf).malloc_data;
   --  arg-macro: function GST_BUFFER_FREE_FUNC (buf)
   --    return GST_BUFFER_CAST(buf).free_func;
   --  unsupported macro: GST_BUFFER_OFFSET_NONE ((guint64)-1)
   --  arg-macro: function GST_BUFFER_DURATION_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DURATION (buffer));
   --  arg-macro: function GST_BUFFER_TIMESTAMP_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_TIMESTAMP (buffer));
   --  arg-macro: function GST_BUFFER_OFFSET_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_OFFSET_END_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET_END (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_IS_DISCONT (buffer)
   --    return GST_BUFFER_FLAG_IS_SET (buffer, GST_BUFFER_FLAG_DISCONT);
   --  arg-macro: procedure gst_buffer_set_data (buf, data, size)
   --    G_STMT_START { GST_BUFFER_DATA (buf) := data; GST_BUFFER_SIZE (buf) := size; } G_STMT_END
   --  unsupported macro: GST_BUFFER_COPY_ALL ((GstBufferCopyFlags) (GST_BUFFER_COPY_FLAGS | GST_BUFFER_COPY_TIMESTAMPS | GST_BUFFER_COPY_CAPS | GST_BUFFER_COPY_QDATA))
   --  arg-macro: procedure gst_buffer_is_writable (buf)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (buf))
   --  arg-macro: procedure gst_buffer_make_writable (buf)
   --    GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (buf)))
   --  arg-macro: procedure gst_value_set_buffer (v, b)
   --    gst_value_set_mini_object(v, GST_MINI_OBJECT_CAST(b))
   --  arg-macro: procedure gst_value_take_buffer (v, b)
   --    gst_value_take_mini_object(v, GST_MINI_OBJECT_CAST(b))
   --  arg-macro: procedure gst_value_get_buffer (v)
   --    GST_BUFFER_CAST (gst_value_get_mini_object(v))

   type GstBuffer;
   type anon11843_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstBuffer is u_GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:33

   type GstBufferClass;
   --subtype GstBufferClass is u_GstBufferClass;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:34

   --  skipped empty struct u_GstBufferPrivate

   --  skipped empty struct GstBufferPrivate

   subtype GstBufferFlag is unsigned;
   GST_BUFFER_FLAG_READONLY : constant GstBufferFlag := 1;
   GST_BUFFER_FLAG_MEDIA4 : constant GstBufferFlag := 2;
   GST_BUFFER_FLAG_PREROLL : constant GstBufferFlag := 16;
   GST_BUFFER_FLAG_DISCONT : constant GstBufferFlag := 32;
   GST_BUFFER_FLAG_IN_CAPS : constant GstBufferFlag := 64;
   GST_BUFFER_FLAG_GAP : constant GstBufferFlag := 128;
   GST_BUFFER_FLAG_DELTA_UNIT : constant GstBufferFlag := 256;
   GST_BUFFER_FLAG_MEDIA1 : constant GstBufferFlag := 512;
   GST_BUFFER_FLAG_MEDIA2 : constant GstBufferFlag := 1024;
   GST_BUFFER_FLAG_MEDIA3 : constant GstBufferFlag := 2048;
   GST_BUFFER_FLAG_LAST : constant GstBufferFlag := 4096;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:238

   type GstBuffer is record
      mini_object : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:267
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:271
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:272
      timestamp : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:275
      duration : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:276
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:279
      offset : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:282
      offset_end : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:283
      malloc_data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:285
      free_func : GST_Low_Level.glib_2_0_glib_gtypes_h.GFreeFunc;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:288
      parent : access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:289
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:292
      u_gst_reserved : anon11843_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:293
   end record;
   pragma Convention (C_Pass_By_Copy, GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:266

   type GstBufferClass is record
      mini_object_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:297
   end record;
   pragma Convention (C_Pass_By_Copy, GstBufferClass);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:296

   function gst_buffer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:300
   pragma Import (C, gst_buffer_get_type, "gst_buffer_get_type");

   function gst_buffer_new return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:303
   pragma Import (C, gst_buffer_new, "gst_buffer_new");

   function gst_buffer_new_and_alloc (arg1 : GLIB.guint) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:304
   pragma Import (C, gst_buffer_new_and_alloc, "gst_buffer_new_and_alloc");

   function gst_buffer_try_new_and_alloc (arg1 : GLIB.guint) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:305
   pragma Import (C, gst_buffer_try_new_and_alloc, "gst_buffer_try_new_and_alloc");

   function gst_buffer_ref (buf : access GstBuffer) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:347
   pragma Import (C, gst_buffer_ref, "gst_buffer_ref");

   procedure gst_buffer_unref (buf : access GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:365
   pragma Import (C, gst_buffer_unref, "gst_buffer_unref");

   function gst_buffer_copy (buf : access constant GstBuffer) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:385
   pragma Import (C, gst_buffer_copy, "gst_buffer_copy");

   subtype GstBufferCopyFlags is unsigned;
   GST_BUFFER_COPY_FLAGS : constant GstBufferCopyFlags := 1;
   GST_BUFFER_COPY_TIMESTAMPS : constant GstBufferCopyFlags := 2;
   GST_BUFFER_COPY_CAPS : constant GstBufferCopyFlags := 4;
   GST_BUFFER_COPY_QDATA : constant GstBufferCopyFlags := 8;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:410

   procedure gst_buffer_copy_metadata
     (arg1 : access GstBuffer;
      arg2 : access constant GstBuffer;
      arg3 : GstBufferCopyFlags);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:423
   pragma Import (C, gst_buffer_copy_metadata, "gst_buffer_copy_metadata");

   function gst_buffer_is_metadata_writable (arg1 : access GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:451
   pragma Import (C, gst_buffer_is_metadata_writable, "gst_buffer_is_metadata_writable");

   function gst_buffer_make_metadata_writable (arg1 : access GstBuffer) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:452
   pragma Import (C, gst_buffer_make_metadata_writable, "gst_buffer_make_metadata_writable");

   procedure gst_buffer_set_qdata
     (arg1 : access GstBuffer;
      arg2 : GLIB.GQuark;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:456
   pragma Import (C, gst_buffer_set_qdata, "gst_buffer_set_qdata");

   function gst_buffer_get_qdata (arg1 : access GstBuffer; arg2 : GLIB.GQuark) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:460
   pragma Import (C, gst_buffer_get_qdata, "gst_buffer_get_qdata");

   procedure gst_buffer_replace (obuf : System.Address; nbuf : access GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:484
   pragma Import (C, gst_buffer_replace, "gst_buffer_replace");

   function gst_buffer_get_caps (arg1 : access GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:489
   pragma Import (C, gst_buffer_get_caps, "gst_buffer_get_caps");

   procedure gst_buffer_set_caps (arg1 : access GstBuffer; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:490
   pragma Import (C, gst_buffer_set_caps, "gst_buffer_set_caps");

   function gst_buffer_create_sub
     (arg1 : access GstBuffer;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:493
   pragma Import (C, gst_buffer_create_sub, "gst_buffer_create_sub");

   function gst_buffer_is_span_fast (arg1 : access GstBuffer; arg2 : access GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:496
   pragma Import (C, gst_buffer_is_span_fast, "gst_buffer_is_span_fast");

   function gst_buffer_span
     (arg1 : access GstBuffer;
      arg2 : GLIB.guint32;
      arg3 : access GstBuffer;
      arg4 : GLIB.guint32) return access GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbuffer.h:497
   pragma Import (C, gst_buffer_span, "gst_buffer_span");

end GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
