pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_app_gstappbuffer_h is

   --  unsupported macro: GST_TYPE_APP_BUFFER (gst_app_buffer_get_type())
   --  arg-macro: function GST_APP_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_APP_BUFFER,GstAppBuffer);
   --  arg-macro: function GST_APP_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_APP_BUFFER,GstAppBufferClass);
   --  arg-macro: function GST_IS_APP_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_APP_BUFFER);
   --  arg-macro: function GST_IS_APP_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_APP_BUFFER);
   type GstAppBuffer;
   --subtype GstAppBuffer is u_GstAppBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:38

   type GstAppBufferClass;
   --subtype GstAppBufferClass is u_GstAppBufferClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:39

   type GstAppBufferFinalizeFunc is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstAppBufferFinalizeFunc);  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:40

   type GstAppBuffer is record
      buffer : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:44
      finalize : GstAppBufferFinalizeFunc;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:47
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:48
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppBuffer);  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:42

   type GstAppBufferClass is record
      buffer_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppBufferClass);  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:51

   function gst_app_buffer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:56
   pragma Import (C, gst_app_buffer_get_type, "gst_app_buffer_get_type");

   function gst_app_buffer_new
     (arg1 : System.Address;
      arg2 : int;
      arg3 : GstAppBufferFinalizeFunc;
      arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappbuffer.h:58
   pragma Import (C, gst_app_buffer_new, "gst_app_buffer_new");

end GST_Low_Level.gstreamer_0_10_gst_app_gstappbuffer_h;
