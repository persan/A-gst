pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;

package GST_Low_Level.gstreamer_0_10_gst_tag_gsttagdemux_h is

   --  unsupported macro: GST_TYPE_TAG_DEMUX (gst_tag_demux_get_type())
   --  arg-macro: function GST_TAG_DEMUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TAG_DEMUX,GstTagDemux);
   --  arg-macro: function GST_TAG_DEMUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TAG_DEMUX,GstTagDemuxClass);
   --  arg-macro: function GST_IS_TAG_DEMUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TAG_DEMUX);
   --  arg-macro: function GST_IS_TAG_DEMUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TAG_DEMUX);
   --  unsupported macro: GST_TYPE_TAG_DEMUX_RESULT (gst_tag_demux_result_get_type())
   type GstTagDemux;
   type anon19076_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagDemux is u_GstTagDemux;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:34

   type GstTagDemuxClass;
   type anon19078_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagDemuxClass is u_GstTagDemuxClass;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:35

   --  skipped empty struct u_GstTagDemuxPrivate

   --  skipped empty struct GstTagDemuxPrivate

   type GstTagDemuxResult is 
     (GST_TAG_DEMUX_RESULT_BROKEN_TAG,
      GST_TAG_DEMUX_RESULT_AGAIN,
      GST_TAG_DEMUX_RESULT_OK);
   pragma Convention (C, GstTagDemuxResult);  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:52

   function gst_tag_demux_result_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:54
   pragma Import (C, gst_tag_demux_result_get_type, "gst_tag_demux_result_get_type");

   type GstTagDemux is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:67
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:70
      reserved : anon19076_reserved_array;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:72
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagDemux);  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:65

   type GstTagDemuxClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:105
      min_start_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:109
      min_end_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:113
      identify_tag : access function 
           (arg1 : access GstTagDemux;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gboolean;
            arg4 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:118
      parse_tag : access function 
           (arg1 : access GstTagDemux;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gboolean;
            arg4 : access GLIB.guint;
            arg5 : System.Address) return GstTagDemuxResult;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:124
      merge_tags : access function 
           (arg1 : access GstTagDemux;
            arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
            arg3 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:131
      reserved : anon19078_reserved_array;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:136
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagDemuxClass);  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:103

   function gst_tag_demux_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/gsttagdemux.h:139
   pragma Import (C, gst_tag_demux_get_type, "gst_tag_demux_get_type");

end GST_Low_Level.gstreamer_0_10_gst_tag_gsttagdemux_h;
