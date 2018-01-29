pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstflowcombiner_h is

   --  unsupported macro: GST_TYPE_FLOW_COMBINER gst_flow_combiner_get_type()
  -- GStreamer
  -- *
  -- * Copyright (C) 2014 Samsung Electronics. All rights reserved.
  -- *   Author: Thiago Santos <ts.santos@sisa.samsung.com>
  -- *
  -- * gstflowcombiner.h: utility to combine multiple flow returns into a single one
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GstFlowCombiner:
  -- *
  -- * Opaque helper structure to aggregate flow returns.
  -- *
  -- * Since: 1.4
  --  

   --  skipped empty struct u_GstFlowCombiner

   --  skipped empty struct GstFlowCombiner

   function gst_flow_combiner_new return System.Address;  -- gst/base/gstflowcombiner.h:44
   pragma Import (C, gst_flow_combiner_new, "gst_flow_combiner_new");

   function gst_flow_combiner_ref (combiner : System.Address) return System.Address;  -- gst/base/gstflowcombiner.h:46
   pragma Import (C, gst_flow_combiner_ref, "gst_flow_combiner_ref");

   procedure gst_flow_combiner_unref (combiner : System.Address);  -- gst/base/gstflowcombiner.h:48
   pragma Import (C, gst_flow_combiner_unref, "gst_flow_combiner_unref");

   procedure gst_flow_combiner_free (combiner : System.Address);  -- gst/base/gstflowcombiner.h:50
   pragma Import (C, gst_flow_combiner_free, "gst_flow_combiner_free");

   function gst_flow_combiner_update_flow (combiner : System.Address; fret : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstflowcombiner.h:52
   pragma Import (C, gst_flow_combiner_update_flow, "gst_flow_combiner_update_flow");

   function gst_flow_combiner_update_pad_flow
     (combiner : System.Address;
      pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      fret : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstflowcombiner.h:54
   pragma Import (C, gst_flow_combiner_update_pad_flow, "gst_flow_combiner_update_pad_flow");

   procedure gst_flow_combiner_add_pad (combiner : System.Address; pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/base/gstflowcombiner.h:57
   pragma Import (C, gst_flow_combiner_add_pad, "gst_flow_combiner_add_pad");

   procedure gst_flow_combiner_remove_pad (combiner : System.Address; pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/base/gstflowcombiner.h:59
   pragma Import (C, gst_flow_combiner_remove_pad, "gst_flow_combiner_remove_pad");

   procedure gst_flow_combiner_clear (combiner : System.Address);  -- gst/base/gstflowcombiner.h:61
   pragma Import (C, gst_flow_combiner_clear, "gst_flow_combiner_clear");

   procedure gst_flow_combiner_reset (combiner : System.Address);  -- gst/base/gstflowcombiner.h:63
   pragma Import (C, gst_flow_combiner_reset, "gst_flow_combiner_reset");

   function gst_flow_combiner_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/base/gstflowcombiner.h:65
   pragma Import (C, gst_flow_combiner_get_type, "gst_flow_combiner_get_type");

   procedure glib_autoptr_cleanup_GstFlowCombiner (u_ptr : System.Address);  -- gst/base/gstflowcombiner.h:68
   pragma Import (C, glib_autoptr_cleanup_GstFlowCombiner, "glib_autoptr_cleanup_GstFlowCombiner");

   type GstFlowCombiner_autoptr is new System.Address;  -- gst/base/gstflowcombiner.h:68

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstflowcombiner_h;
