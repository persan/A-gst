pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h;
with glib;
with glib.Values;
with System;
with System;

package GST_Low_Level.gstreamer_0_10_gst_base_gsttypefindhelper_h is

   function gst_type_find_helper (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.guint64) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:31
   pragma Import (C, gst_type_find_helper, "gst_type_find_helper");

   function gst_type_find_helper_for_buffer
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:33
   pragma Import (C, gst_type_find_helper_for_buffer, "gst_type_find_helper_for_buffer");

   function gst_type_find_helper_for_extension (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:37
   pragma Import (C, gst_type_find_helper_for_extension, "gst_type_find_helper_for_extension");

   type GstTypeFindHelperGetRangeFunction is access function 
        (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstTypeFindHelperGetRangeFunction);  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:57

   function gst_type_find_helper_get_range
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GstTypeFindHelperGetRangeFunction;
      arg3 : GLIB.guint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:62
   pragma Import (C, gst_type_find_helper_get_range, "gst_type_find_helper_get_range");

   function gst_type_find_helper_get_range_ext
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GstTypeFindHelperGetRangeFunction;
      arg3 : GLIB.guint64;
      arg4 : access GLIB.gchar;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gsttypefindhelper.h:67
   pragma Import (C, gst_type_find_helper_get_range_ext, "gst_type_find_helper_get_range_ext");

end GST_Low_Level.gstreamer_0_10_gst_base_gsttypefindhelper_h;
