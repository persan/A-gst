pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_streamvolume_h is

   --  unsupported macro: GST_TYPE_STREAM_VOLUME (gst_stream_volume_get_type ())
   --  arg-macro: function GST_STREAM_VOLUME (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_STREAM_VOLUME, GstStreamVolume);
   --  arg-macro: function GST_STREAM_VOLUME_INTERFACE (iface)
   --    return G_TYPE_CHECK_INTERFACE_CAST ((iface), GST_TYPE_STREAM_VOLUME, GstStreamVolumeInterface);
   --  arg-macro: function GST_IS_STREAM_VOLUME (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_STREAM_VOLUME);
   --  arg-macro: function GST_IS_STREAM_VOLUME_INTERFACE (iface)
   --    return G_TYPE_CHECK_INTERFACE_TYPE ((iface), GST_TYPE_STREAM_VOLUME);
   --  arg-macro: function GST_STREAM_VOLUME_GET_INTERFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_STREAM_VOLUME, GstStreamVolumeInterface);
   --  skipped empty struct u_GstStreamVolume

   --  skipped empty struct GstStreamVolume

   type GstStreamVolumeInterface;
   type anon21040_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStreamVolumeInterface is u_GstStreamVolumeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:41

   type GstStreamVolumeInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:44
      u_gst_reserved : anon21040_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstStreamVolumeInterface);  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:43

   type GstStreamVolumeFormat is 
     (GST_STREAM_VOLUME_FORMAT_LINEAR,
      GST_STREAM_VOLUME_FORMAT_CUBIC,
      GST_STREAM_VOLUME_FORMAT_DB);
   pragma Convention (C, GstStreamVolumeFormat);  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:68

   function gst_stream_volume_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:70
   pragma Import (C, gst_stream_volume_get_type, "gst_stream_volume_get_type");

   procedure gst_stream_volume_set_volume
     (arg1 : System.Address;
      arg2 : GstStreamVolumeFormat;
      arg3 : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:71
   pragma Import (C, gst_stream_volume_set_volume, "gst_stream_volume_set_volume");

   function gst_stream_volume_get_volume (arg1 : System.Address; arg2 : GstStreamVolumeFormat) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:74
   pragma Import (C, gst_stream_volume_get_volume, "gst_stream_volume_get_volume");

   procedure gst_stream_volume_set_mute (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:77
   pragma Import (C, gst_stream_volume_set_mute, "gst_stream_volume_set_mute");

   function gst_stream_volume_get_mute (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:79
   pragma Import (C, gst_stream_volume_get_mute, "gst_stream_volume_get_mute");

   function gst_stream_volume_convert_volume
     (arg1 : GstStreamVolumeFormat;
      arg2 : GstStreamVolumeFormat;
      arg3 : GLIB.gdouble) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/interfaces/streamvolume.h:81
   pragma Import (C, gst_stream_volume_convert_volume, "gst_stream_volume_convert_volume");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_streamvolume_h;
