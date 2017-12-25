pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_tag_gsttagmux_h is

   --  unsupported macro: GST_TYPE_TAG_MUX (gst_tag_mux_get_type())
   --  arg-macro: function GST_TAG_MUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TAG_MUX,GstTagMux);
   --  arg-macro: function GST_TAG_MUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TAG_MUX,GstTagMuxClass);
   --  arg-macro: function GST_IS_TAG_MUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TAG_MUX);
   --  arg-macro: function GST_IS_TAG_MUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TAG_MUX);
   type GstTagMux;
   type anon19054_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagMux is u_GstTagMux;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:40

   type GstTagMuxClass;
   type anon19056_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagMuxClass is u_GstTagMuxClass;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:41

   --  skipped empty struct u_GstTagMuxPrivate

   --  skipped empty struct GstTagMuxPrivate

   type GstTagMux is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:53
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:56
      u_gst_reserved : anon19054_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagMux);  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:52

   type GstTagMuxClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:75
      render_start_tag : access function  (arg1 : access GstTagMux; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:78
      render_end_tag : access function  (arg1 : access GstTagMux; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:79
      u_gst_reserved : anon19056_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagMuxClass);  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:74

   function gst_tag_mux_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagmux.h:85
   pragma Import (C, gst_tag_mux_get_type, "gst_tag_mux_get_type");

end GST_Low_Level.gstreamer_0_10_gst_tag_gsttagmux_h;
