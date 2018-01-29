pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsturi_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelementfactory_h is

   --  unsupported macro: GST_TYPE_ELEMENT_FACTORY (gst_element_factory_get_type())
   --  arg-macro: function GST_ELEMENT_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ELEMENT_FACTORY, GstElementFactory);
   --  arg-macro: function GST_ELEMENT_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_ELEMENT_FACTORY, GstElementFactoryClass);
   --  arg-macro: function GST_IS_ELEMENT_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ELEMENT_FACTORY);
   --  arg-macro: function GST_IS_ELEMENT_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_ELEMENT_FACTORY);
   --  arg-macro: function GST_ELEMENT_FACTORY_CAST (obj)
   --    return (GstElementFactory *)(obj);
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DECODER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 0))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_ENCODER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 1))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_SINK ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 2))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_SRC ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 3))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MUXER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 4))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DEMUXER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 5))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_PARSER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 6))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_PAYLOADER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 7))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 8))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_FORMATTER ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 9))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DECRYPTOR ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 10))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_ENCRYPTOR ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 11))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MAX_ELEMENTS ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 48))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 49))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 50))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 51))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 52))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_METADATA ((GstElementFactoryListType)(G_GUINT64_CONSTANT (1) << 53))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_ANY ((GstElementFactoryListType)((G_GUINT64_CONSTANT (1) << 49) - 1))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_ANY ((GstElementFactoryListType)(~G_GUINT64_CONSTANT (0) << 48))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_VIDEO_ENCODER ((GstElementFactoryListType)(GST_ELEMENT_FACTORY_TYPE_ENCODER | GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO | GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_AUDIO_ENCODER ((GstElementFactoryListType)(GST_ELEMENT_FACTORY_TYPE_ENCODER | GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS ((GstElementFactoryListType)(GST_ELEMENT_FACTORY_TYPE_SINK | GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO | GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO | GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE))
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DECODABLE ((GstElementFactoryListType)(GST_ELEMENT_FACTORY_TYPE_DECODER | GST_ELEMENT_FACTORY_TYPE_DEMUXER | GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER | GST_ELEMENT_FACTORY_TYPE_PARSER | GST_ELEMENT_FACTORY_TYPE_DECRYPTOR))
   GST_ELEMENT_FACTORY_KLASS_DECODER : aliased constant String := "Decoder" & ASCII.NUL;  --  gst/gstelementfactory.h:179
   GST_ELEMENT_FACTORY_KLASS_ENCODER : aliased constant String := "Encoder" & ASCII.NUL;  --  gst/gstelementfactory.h:180
   GST_ELEMENT_FACTORY_KLASS_SINK : aliased constant String := "Sink" & ASCII.NUL;  --  gst/gstelementfactory.h:181
   GST_ELEMENT_FACTORY_KLASS_SRC : aliased constant String := "Source" & ASCII.NUL;  --  gst/gstelementfactory.h:182
   GST_ELEMENT_FACTORY_KLASS_MUXER : aliased constant String := "Muxer" & ASCII.NUL;  --  gst/gstelementfactory.h:183
   GST_ELEMENT_FACTORY_KLASS_DEMUXER : aliased constant String := "Demuxer" & ASCII.NUL;  --  gst/gstelementfactory.h:184
   GST_ELEMENT_FACTORY_KLASS_PARSER : aliased constant String := "Parser" & ASCII.NUL;  --  gst/gstelementfactory.h:185
   GST_ELEMENT_FACTORY_KLASS_PAYLOADER : aliased constant String := "Payloader" & ASCII.NUL;  --  gst/gstelementfactory.h:186
   GST_ELEMENT_FACTORY_KLASS_DEPAYLOADER : aliased constant String := "Depayloader" & ASCII.NUL;  --  gst/gstelementfactory.h:187
   GST_ELEMENT_FACTORY_KLASS_FORMATTER : aliased constant String := "Formatter" & ASCII.NUL;  --  gst/gstelementfactory.h:188
   GST_ELEMENT_FACTORY_KLASS_DECRYPTOR : aliased constant String := "Decryptor" & ASCII.NUL;  --  gst/gstelementfactory.h:189
   GST_ELEMENT_FACTORY_KLASS_ENCRYPTOR : aliased constant String := "Encryptor" & ASCII.NUL;  --  gst/gstelementfactory.h:190

   GST_ELEMENT_FACTORY_KLASS_MEDIA_VIDEO : aliased constant String := "Video" & ASCII.NUL;  --  gst/gstelementfactory.h:192
   GST_ELEMENT_FACTORY_KLASS_MEDIA_AUDIO : aliased constant String := "Audio" & ASCII.NUL;  --  gst/gstelementfactory.h:193
   GST_ELEMENT_FACTORY_KLASS_MEDIA_IMAGE : aliased constant String := "Image" & ASCII.NUL;  --  gst/gstelementfactory.h:194
   GST_ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE : aliased constant String := "Subtitle" & ASCII.NUL;  --  gst/gstelementfactory.h:195
   GST_ELEMENT_FACTORY_KLASS_MEDIA_METADATA : aliased constant String := "Metadata" & ASCII.NUL;  --  gst/gstelementfactory.h:196

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *               2000,2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstelementfactory.h: Header for GstElementFactory
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
  -- * GstElementFactory:
  -- *
  -- * The opaque #GstElementFactory data structure.
  --  

   --  skipped empty struct u_GstElementFactory

   --  skipped empty struct GstElementFactory

   --  skipped empty struct u_GstElementFactoryClass

   --  skipped empty struct GstElementFactoryClass

   function gst_element_factory_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstelementfactory.h:53
   pragma Import (C, gst_element_factory_get_type, "gst_element_factory_get_type");

   function gst_element_factory_find (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return System.Address;  -- gst/gstelementfactory.h:55
   pragma Import (C, gst_element_factory_find, "gst_element_factory_find");

   function gst_element_factory_get_element_type (factory : System.Address) return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstelementfactory.h:57
   pragma Import (C, gst_element_factory_get_element_type, "gst_element_factory_get_element_type");

   function gst_element_factory_get_metadata (factory : System.Address; key : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstelementfactory.h:59
   pragma Import (C, gst_element_factory_get_metadata, "gst_element_factory_get_metadata");

   function gst_element_factory_get_metadata_keys (factory : System.Address) return System.Address;  -- gst/gstelementfactory.h:60
   pragma Import (C, gst_element_factory_get_metadata_keys, "gst_element_factory_get_metadata_keys");

   function gst_element_factory_get_num_pad_templates (factory : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstelementfactory.h:62
   pragma Import (C, gst_element_factory_get_num_pad_templates, "gst_element_factory_get_num_pad_templates");

   function gst_element_factory_get_static_pad_templates (factory : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:63
   pragma Import (C, gst_element_factory_get_static_pad_templates, "gst_element_factory_get_static_pad_templates");

   function gst_element_factory_get_uri_type (factory : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsturi_h.GstURIType;  -- gst/gstelementfactory.h:65
   pragma Import (C, gst_element_factory_get_uri_type, "gst_element_factory_get_uri_type");

   function gst_element_factory_get_uri_protocols (factory : System.Address) return System.Address;  -- gst/gstelementfactory.h:66
   pragma Import (C, gst_element_factory_get_uri_protocols, "gst_element_factory_get_uri_protocols");

   function gst_element_factory_has_interface (factory : System.Address; interfacename : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstelementfactory.h:68
   pragma Import (C, gst_element_factory_has_interface, "gst_element_factory_has_interface");

   function gst_element_factory_create (factory : System.Address; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstelementfactory.h:71
   pragma Import (C, gst_element_factory_create, "gst_element_factory_create");

   function gst_element_factory_make (factoryname : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstelementfactory.h:73
   pragma Import (C, gst_element_factory_make, "gst_element_factory_make");

   function gst_element_register
     (plugin : System.Address;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      rank : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      c_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstelementfactory.h:75
   pragma Import (C, gst_element_register, "gst_element_register");

  -- Factory list functions  
  --*
  -- * GstFactoryListType:
  -- * @GST_ELEMENT_FACTORY_TYPE_DECODER: Decoder elements
  -- * @GST_ELEMENT_FACTORY_TYPE_ENCODER: Encoder elements
  -- * @GST_ELEMENT_FACTORY_TYPE_SINK: Sink elements
  -- * @GST_ELEMENT_FACTORY_TYPE_SRC: Source elements
  -- * @GST_ELEMENT_FACTORY_TYPE_MUXER: Muxer elements
  -- * @GST_ELEMENT_FACTORY_TYPE_DEMUXER: Demuxer elements
  -- * @GST_ELEMENT_FACTORY_TYPE_PARSER: Parser elements
  -- * @GST_ELEMENT_FACTORY_TYPE_PAYLOADER: Payloader elements
  -- * @GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER: Depayloader elements
  -- * @GST_ELEMENT_FACTORY_TYPE_DECRYPTOR: Elements handling decryption (Since 1.6)
  -- * @GST_ELEMENT_FACTORY_TYPE_ENCRYPTOR: Elements handling encryption (Since 1.6)
  -- * @GST_ELEMENT_FACTORY_TYPE_MAX_ELEMENTS: Private, do not use
  -- * @GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO: Elements handling video media types
  -- * @GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO: Elements handling audio media types
  -- * @GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE: Elements handling image media types
  -- * @GST_ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE: Elements handling subtitle media types
  -- * @GST_ELEMENT_FACTORY_TYPE_MEDIA_METADATA: Elements handling metadata media types
  -- *
  -- * The type of #GstElementFactory to filter.
  -- *
  -- * All @GstFactoryListType up to @GST_ELEMENT_FACTORY_TYPE_MAX_ELEMENTS are exclusive.
  -- *
  -- * If one or more of the MEDIA types are specified, then only elements
  -- * matching the specified media types will be selected.
  --  

   subtype GstElementFactoryListType is GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/gstelementfactory.h:108

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_ANY: (value 562949953421311) (type GstElementFactoryListType)
  -- *
  -- * Elements of any of the defined GST_ELEMENT_FACTORY_LIST types
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_MEDIA_ANY: (value 18446462598732840960) (type GstElementFactoryListType)
  -- *
  -- * Elements matching any of the defined GST_ELEMENT_FACTORY_TYPE_MEDIA types
  -- *
  -- * Note: Do not use this if you wish to not filter against any of the defined
  -- * media types. If you wish to do this, simply don't specify any
  -- * GST_ELEMENT_FACTORY_TYPE_MEDIA flag.
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_VIDEO_ENCODER: (value 2814749767106562) (type GstElementFactoryListType)
  -- *
  -- * All encoders handling video or image media types
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_AUDIO_ENCODER: (value 1125899906842626) (type GstElementFactoryListType)
  -- *
  -- * All encoders handling audio media types
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS: (value 3940649673949188) (type GstElementFactoryListType)
  -- *
  -- * All sinks handling audio, video or image media types
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_DECODABLE: (value 353) (type GstElementFactoryListType)
  -- *
  -- * All elements used to 'decode' streams (decoders, demuxers, parsers, depayloaders)
  --  

  -- Element klass defines  
   function gst_element_factory_list_is_type (factory : System.Address; c_type : GstElementFactoryListType) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstelementfactory.h:198
   pragma Import (C, gst_element_factory_list_is_type, "gst_element_factory_list_is_type");

   function gst_element_factory_list_get_elements (c_type : GstElementFactoryListType; minrank : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h.GstRank) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:201
   pragma Import (C, gst_element_factory_list_get_elements, "gst_element_factory_list_get_elements");

   function gst_element_factory_list_filter
     (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      direction : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
      subsetonly : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:205
   pragma Import (C, gst_element_factory_list_filter, "gst_element_factory_list_filter");

   procedure glib_autoptr_cleanup_GstElementFactory (u_ptr : System.Address);  -- gst/gstelementfactory.h:209
   pragma Import (C, glib_autoptr_cleanup_GstElementFactory, "glib_autoptr_cleanup_GstElementFactory");

   type GstElementFactory_autoptr is new System.Address;  -- gst/gstelementfactory.h:209

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelementfactory_h;
