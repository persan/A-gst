pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstfilter_h is

   type GstFilterFunc is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstFilterFunc);  -- /usr/include/gstreamer-0.10/gst/gstfilter.h:39

   function gst_filter_run
     (arg1 : access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;
      arg2 : GstFilterFunc;
      arg3 : GLIB.gboolean;
      arg4 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstfilter.h:43
   pragma Import (C, gst_filter_run, "gst_filter_run");

end GST_Low_Level.gstreamer_0_10_gst_gstfilter_h;
