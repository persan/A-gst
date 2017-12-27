pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_streamvolume_h is

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
  -- GStreamer StreamVolume
  -- * Copyright (C) 2009 Sebastian Dröge <sebastian.droege@collabora.co.uk>
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

   --  skipped empty struct u_GstStreamVolume

   --  skipped empty struct GstStreamVolume

   type GstStreamVolumeInterface;
   type u_GstStreamVolumeInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStreamVolumeInterface is u_GstStreamVolumeInterface;  -- gst/interfaces/streamvolume.h:41

   type GstStreamVolumeInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/streamvolume.h:44
      u_gst_reserved : u_GstStreamVolumeInterface_u_gst_reserved_array;  -- gst/interfaces/streamvolume.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstStreamVolumeInterface);  -- gst/interfaces/streamvolume.h:43

  --< private > 
  --*
  -- * GstStreamVolumeFormat:
  -- * @GST_STREAM_VOLUME_FORMAT_LINEAR: Linear scale factor, 1.0 = 100%
  -- * @GST_STREAM_VOLUME_FORMAT_CUBIC: Cubic volume scale
  -- * @GST_STREAM_VOLUME_FORMAT_DB: Logarithmic volume scale (dB, amplitude not power)
  -- *
  -- * Different representations of a stream volume. gst_stream_volume_convert_volume()
  -- * allows to convert between the different representations.
  -- *
  -- * Formulas to convert from a linear to a cubic or dB volume are
  -- * cbrt(val) and 20 * log10 (val).
  -- * 
  -- * Since: 0.10.25
  --  

   type GstStreamVolumeFormat is 
     (GST_STREAM_VOLUME_FORMAT_LINEAR,
      GST_STREAM_VOLUME_FORMAT_CUBIC,
      GST_STREAM_VOLUME_FORMAT_DB);
   pragma Convention (C, GstStreamVolumeFormat);  -- gst/interfaces/streamvolume.h:68

   function gst_stream_volume_get_type return GLIB.GType;  -- gst/interfaces/streamvolume.h:70
   pragma Import (C, gst_stream_volume_get_type, "gst_stream_volume_get_type");

   procedure gst_stream_volume_set_volume
     (volume : System.Address;
      format : GstStreamVolumeFormat;
      val : GLIB.gdouble);  -- gst/interfaces/streamvolume.h:71
   pragma Import (C, gst_stream_volume_set_volume, "gst_stream_volume_set_volume");

   function gst_stream_volume_get_volume (volume : System.Address; format : GstStreamVolumeFormat) return GLIB.gdouble;  -- gst/interfaces/streamvolume.h:74
   pragma Import (C, gst_stream_volume_get_volume, "gst_stream_volume_get_volume");

   procedure gst_stream_volume_set_mute (volume : System.Address; mute : GLIB.gboolean);  -- gst/interfaces/streamvolume.h:77
   pragma Import (C, gst_stream_volume_set_mute, "gst_stream_volume_set_mute");

   function gst_stream_volume_get_mute (volume : System.Address) return GLIB.gboolean;  -- gst/interfaces/streamvolume.h:79
   pragma Import (C, gst_stream_volume_get_mute, "gst_stream_volume_get_mute");

   function gst_stream_volume_convert_volume
     (from : GstStreamVolumeFormat;
      to : GstStreamVolumeFormat;
      val : GLIB.gdouble) return GLIB.gdouble;  -- gst/interfaces/streamvolume.h:81
   pragma Import (C, gst_stream_volume_convert_volume, "gst_stream_volume_convert_volume");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_streamvolume_h;
