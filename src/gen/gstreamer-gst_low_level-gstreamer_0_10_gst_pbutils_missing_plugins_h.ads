pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_missing_plugins_h is

  -- GStreamer base utils library missing plugins support
  -- * Copyright (C) 2006 Tim-Philipp Müller <tim centricular net>
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

  -- * functions to create missing-plugin messages, for use by plugins primarily
  --  

   function gst_missing_uri_source_message_new (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; protocol : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/pbutils/missing-plugins.h:32
   pragma Import (C, gst_missing_uri_source_message_new, "gst_missing_uri_source_message_new");

   function gst_missing_uri_sink_message_new (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; protocol : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/pbutils/missing-plugins.h:35
   pragma Import (C, gst_missing_uri_sink_message_new, "gst_missing_uri_sink_message_new");

   function gst_missing_element_message_new (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; factory_name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/pbutils/missing-plugins.h:38
   pragma Import (C, gst_missing_element_message_new, "gst_missing_element_message_new");

   function gst_missing_decoder_message_new (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; decode_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/pbutils/missing-plugins.h:41
   pragma Import (C, gst_missing_decoder_message_new, "gst_missing_decoder_message_new");

   function gst_missing_encoder_message_new (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; encode_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/pbutils/missing-plugins.h:44
   pragma Import (C, gst_missing_encoder_message_new, "gst_missing_encoder_message_new");

  -- * functions for use by applications when dealing with missing-plugin messages
  --  

   function gst_missing_plugin_message_get_installer_detail (msg : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:51
   pragma Import (C, gst_missing_plugin_message_get_installer_detail, "gst_missing_plugin_message_get_installer_detail");

   function gst_missing_plugin_message_get_description (msg : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:53
   pragma Import (C, gst_missing_plugin_message_get_description, "gst_missing_plugin_message_get_description");

   function gst_is_missing_plugin_message (msg : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- gst/pbutils/missing-plugins.h:55
   pragma Import (C, gst_is_missing_plugin_message, "gst_is_missing_plugin_message");

  -- * functions for use by applications that know exactly what plugins they are
  -- * missing and want to request them directly rather than just react to
  -- * missing-plugin messages posted by elements such as playbin or decodebin
  --  

   function gst_missing_uri_source_installer_detail_new (protocol : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:64
   pragma Import (C, gst_missing_uri_source_installer_detail_new, "gst_missing_uri_source_installer_detail_new");

   function gst_missing_uri_sink_installer_detail_new (protocol : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:66
   pragma Import (C, gst_missing_uri_sink_installer_detail_new, "gst_missing_uri_sink_installer_detail_new");

   function gst_missing_element_installer_detail_new (factory_name : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:68
   pragma Import (C, gst_missing_element_installer_detail_new, "gst_missing_element_installer_detail_new");

   function gst_missing_decoder_installer_detail_new (decode_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:70
   pragma Import (C, gst_missing_decoder_installer_detail_new, "gst_missing_decoder_installer_detail_new");

   function gst_missing_encoder_installer_detail_new (encode_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- gst/pbutils/missing-plugins.h:72
   pragma Import (C, gst_missing_encoder_installer_detail_new, "gst_missing_encoder_installer_detail_new");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_missing_plugins_h;
