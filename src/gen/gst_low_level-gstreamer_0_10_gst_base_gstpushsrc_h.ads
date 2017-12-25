pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h is

   --  unsupported macro: GST_TYPE_PUSH_SRC (gst_push_src_get_type())
   --  arg-macro: function GST_PUSH_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_PUSH_SRC,GstPushSrc);
   --  arg-macro: function GST_PUSH_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_PUSH_SRC,GstPushSrcClass);
   --  arg-macro: function GST_PUSH_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_PUSH_SRC, GstPushSrcClass);
   --  arg-macro: function GST_IS_PUSH_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_PUSH_SRC);
   --  arg-macro: function GST_IS_PUSH_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_PUSH_SRC);
   type GstPushSrc;
   type anon17770_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPushSrc is u_GstPushSrc;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:39

   type GstPushSrcClass;
   type anon17772_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPushSrcClass is u_GstPushSrcClass;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:40

   type GstPushSrc is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrc;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:48
      u_gst_reserved : anon17770_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrc);  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:47

   type GstPushSrcClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrcClass;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:55
      create : access function  (arg1 : access GstPushSrc; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:58
      u_gst_reserved : anon17772_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrcClass);  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:54

   function gst_push_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstpushsrc.h:64
   pragma Import (C, gst_push_src_get_type, "gst_push_src_get_type");

end GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
