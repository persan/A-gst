pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h is

   --  arg-macro: procedure GST_ELEMENT_DETAILS (longname, klass, description, author)
   --    { longname, klass, description, author, {NULL} }
   --  arg-macro: function GST_IS_ELEMENT_DETAILS (details)
   --    return  (details)  and then  ((details).longname /= NULL)  and then  ((details).klass /= NULL)  and then  ((details).description /= NULL)  and then  ((details).author /= NULL);
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
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DECODER (G_GUINT64_CONSTANT (1) << 0)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_ENCODER (G_GUINT64_CONSTANT (1) << 1)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_SINK (G_GUINT64_CONSTANT (1) << 2)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_SRC (G_GUINT64_CONSTANT (1) << 3)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MUXER (G_GUINT64_CONSTANT (1) << 4)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DEMUXER (G_GUINT64_CONSTANT (1) << 5)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_PARSER (G_GUINT64_CONSTANT (1) << 6)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_PAYLOADER (G_GUINT64_CONSTANT (1) << 7)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER (G_GUINT64_CONSTANT (1) << 8)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_FORMATTER (G_GUINT64_CONSTANT (1) << 9)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MAX_ELEMENTS (G_GUINT64_CONSTANT (1) << 48)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO (G_GUINT64_CONSTANT (1) << 49)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO (G_GUINT64_CONSTANT (1) << 50)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE (G_GUINT64_CONSTANT (1) << 51)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE (G_GUINT64_CONSTANT (1) << 52)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_METADATA (G_GUINT64_CONSTANT (1) << 53)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_ANY ((G_GUINT64_CONSTANT (1) << 49) - 1)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_MEDIA_ANY (~G_GUINT64_CONSTANT (0) << 48)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_VIDEO_ENCODER (GST_ELEMENT_FACTORY_TYPE_ENCODER | GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO | GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_AUDIO_ENCODER (GST_ELEMENT_FACTORY_TYPE_ENCODER | GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS (GST_ELEMENT_FACTORY_TYPE_SINK | GST_ELEMENT_FACTORY_TYPE_MEDIA_AUDIO | GST_ELEMENT_FACTORY_TYPE_MEDIA_VIDEO | GST_ELEMENT_FACTORY_TYPE_MEDIA_IMAGE)
   --  unsupported macro: GST_ELEMENT_FACTORY_TYPE_DECODABLE (GST_ELEMENT_FACTORY_TYPE_DECODER | GST_ELEMENT_FACTORY_TYPE_DEMUXER | GST_ELEMENT_FACTORY_TYPE_DEPAYLOADER | GST_ELEMENT_FACTORY_TYPE_PARSER)
   GST_ELEMENT_FACTORY_KLASS_DECODER : aliased constant String := "Decoder" & ASCII.NUL;  --  gst/gstelementfactory.h:285
   GST_ELEMENT_FACTORY_KLASS_ENCODER : aliased constant String := "Encoder" & ASCII.NUL;  --  gst/gstelementfactory.h:286
   GST_ELEMENT_FACTORY_KLASS_SINK : aliased constant String := "Sink" & ASCII.NUL;  --  gst/gstelementfactory.h:287
   GST_ELEMENT_FACTORY_KLASS_SRC : aliased constant String := "Source" & ASCII.NUL;  --  gst/gstelementfactory.h:288
   GST_ELEMENT_FACTORY_KLASS_MUXER : aliased constant String := "Muxer" & ASCII.NUL;  --  gst/gstelementfactory.h:289
   GST_ELEMENT_FACTORY_KLASS_DEMUXER : aliased constant String := "Demuxer" & ASCII.NUL;  --  gst/gstelementfactory.h:290
   GST_ELEMENT_FACTORY_KLASS_PARSER : aliased constant String := "Parser" & ASCII.NUL;  --  gst/gstelementfactory.h:291
   GST_ELEMENT_FACTORY_KLASS_PAYLOADER : aliased constant String := "Payloader" & ASCII.NUL;  --  gst/gstelementfactory.h:292
   GST_ELEMENT_FACTORY_KLASS_DEPAYLOADER : aliased constant String := "Depayloader" & ASCII.NUL;  --  gst/gstelementfactory.h:293
   GST_ELEMENT_FACTORY_KLASS_FORMATTER : aliased constant String := "Formatter" & ASCII.NUL;  --  gst/gstelementfactory.h:294

   GST_ELEMENT_FACTORY_KLASS_MEDIA_VIDEO : aliased constant String := "Video" & ASCII.NUL;  --  gst/gstelementfactory.h:296
   GST_ELEMENT_FACTORY_KLASS_MEDIA_AUDIO : aliased constant String := "Audio" & ASCII.NUL;  --  gst/gstelementfactory.h:297
   GST_ELEMENT_FACTORY_KLASS_MEDIA_IMAGE : aliased constant String := "Image" & ASCII.NUL;  --  gst/gstelementfactory.h:298
   GST_ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE : aliased constant String := "Subtitle" & ASCII.NUL;  --  gst/gstelementfactory.h:299
   GST_ELEMENT_FACTORY_KLASS_MEDIA_METADATA : aliased constant String := "Metadata" & ASCII.NUL;  --  gst/gstelementfactory.h:300

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *               2000,2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstelement.h: Header for GstElement
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

   type GstElementFactory;
   type u_GstElementFactory_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstElementFactory is u_GstElementFactory;  -- gst/gstelementfactory.h:27

   type GstElementFactoryClass;
   type u_GstElementFactoryClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstElementFactoryClass is u_GstElementFactoryClass;  -- gst/gstelementfactory.h:28

  -- FIXME 0.11: Move GstElementDetails into a private header and use it internally
  -- * in GstElementFactory, GstElementClass and the registry
  --  

   type GstElementDetails;
   type u_GstElementDetails_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstElementDetails is u_GstElementDetails;  -- gst/gstelementfactory.h:43

  --*
  -- * GstElementDetails:
  -- * @longname: long, english name
  -- * @klass: string describing the type of element, as an unordered list
  -- * separated with slashes ('/'). See draft-klass.txt of the design docs
  -- * for more details and common types
  -- * @description: what the element is about
  -- * @author: who wrote this thing?
  -- *
  -- * This struct defines the public information about a #GstElement. It contains
  -- * meta-data about the element that is mostly for the benefit of editors.
  -- *
  -- * The @klass member can be used by applications to filter elements based
  -- * on functionality.
  --  

  -- FIXME: need translatable stuff in here (how handle in registry)?
  -- * can't we use _N("long name") in element implementations and use _(longname)
  -- * in gst_element_factory_get_longname()
  --  

  --< public >  
   type GstElementDetails is record
      longname : access GLIB.gchar;  -- gst/gstelementfactory.h:67
      klass : access GLIB.gchar;  -- gst/gstelementfactory.h:68
      description : access GLIB.gchar;  -- gst/gstelementfactory.h:69
      author : access GLIB.gchar;  -- gst/gstelementfactory.h:70
      u_gst_reserved : u_GstElementDetails_u_gst_reserved_array;  -- gst/gstelementfactory.h:73
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementDetails);  -- gst/gstelementfactory.h:64

  --< private > 
  --*
  -- * GST_ELEMENT_DETAILS:
  -- * @longname: long, english name
  -- * @klass: string describing the type of element, as an unordered list
  -- * separated with slashes ('/'). See draft-klass.txt of the design docs
  -- * for more details and common types
  -- * @description: what the element is about
  -- * @author: who wrote this element
  -- *
  -- * Macro to initialize #GstElementDetails.
  --  

  --*
  -- * GST_IS_ELEMENT_DETAILS:
  -- * @details: the #GstElementDetails to check
  -- *
  -- * Tests if element details are initialized.
  --  

  -- FIXME: what about adding '&& (*__gst_reserved==NULL)'  
  --*
  -- * GstElementFactory:
  -- *
  -- * The opaque #GstElementFactory data structure.
  --  

   type GstElementFactory is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- gst/gstelementfactory.h:116
      c_type : aliased GLIB.GType;  -- gst/gstelementfactory.h:118
      details : aliased GstElementDetails;  -- gst/gstelementfactory.h:121
      staticpadtemplates : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:123
      numpadtemplates : aliased GLIB.guint;  -- gst/gstelementfactory.h:124
      uri_type : aliased GLIB.guint;  -- gst/gstelementfactory.h:127
      uri_protocols : System.Address;  -- gst/gstelementfactory.h:128
      interfaces : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:130
      meta_data : System.Address;  -- gst/gstelementfactory.h:134
      u_gst_reserved : u_GstElementFactory_u_gst_reserved_array;  -- gst/gstelementfactory.h:135
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementFactory);  -- gst/gstelementfactory.h:115

  -- unique GType of element or 0 if not loaded  
  -- FIXME-0.11: deprecate this in favour of meta_data  
  -- GstStaticPadTemplate list  
  -- URI interface stuff  
  -- interface type names this element implements  
  --< private > 
  -- FIXME-0.11: move up and replace details  
   type GstElementFactoryClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- gst/gstelementfactory.h:139
      u_gst_reserved : u_GstElementFactoryClass_u_gst_reserved_array;  -- gst/gstelementfactory.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementFactoryClass);  -- gst/gstelementfactory.h:138

   function gst_element_factory_get_type return GLIB.GType;  -- gst/gstelementfactory.h:144
   pragma Import (C, gst_element_factory_get_type, "gst_element_factory_get_type");

   function gst_element_factory_find (name : access GLIB.gchar) return access GstElementFactory;  -- gst/gstelementfactory.h:146
   pragma Import (C, gst_element_factory_find, "gst_element_factory_find");

   function gst_element_factory_get_element_type (factory : access GstElementFactory) return GLIB.GType;  -- gst/gstelementfactory.h:148
   pragma Import (C, gst_element_factory_get_element_type, "gst_element_factory_get_element_type");

   function gst_element_factory_get_longname (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:149
   pragma Import (C, gst_element_factory_get_longname, "gst_element_factory_get_longname");

   function gst_element_factory_get_klass (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:150
   pragma Import (C, gst_element_factory_get_klass, "gst_element_factory_get_klass");

   function gst_element_factory_get_description (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:151
   pragma Import (C, gst_element_factory_get_description, "gst_element_factory_get_description");

   function gst_element_factory_get_author (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:152
   pragma Import (C, gst_element_factory_get_author, "gst_element_factory_get_author");

   function gst_element_factory_get_documentation_uri (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:153
   pragma Import (C, gst_element_factory_get_documentation_uri, "gst_element_factory_get_documentation_uri");

   function gst_element_factory_get_icon_name (factory : access GstElementFactory) return access GLIB.gchar;  -- gst/gstelementfactory.h:154
   pragma Import (C, gst_element_factory_get_icon_name, "gst_element_factory_get_icon_name");

   function gst_element_factory_get_num_pad_templates (factory : access GstElementFactory) return GLIB.guint;  -- gst/gstelementfactory.h:155
   pragma Import (C, gst_element_factory_get_num_pad_templates, "gst_element_factory_get_num_pad_templates");

   function gst_element_factory_get_static_pad_templates (factory : access GstElementFactory) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:156
   pragma Import (C, gst_element_factory_get_static_pad_templates, "gst_element_factory_get_static_pad_templates");

   function gst_element_factory_get_uri_type (factory : access GstElementFactory) return GLIB.gint;  -- gst/gstelementfactory.h:157
   pragma Import (C, gst_element_factory_get_uri_type, "gst_element_factory_get_uri_type");

   function gst_element_factory_get_uri_protocols (factory : access GstElementFactory) return System.Address;  -- gst/gstelementfactory.h:158
   pragma Import (C, gst_element_factory_get_uri_protocols, "gst_element_factory_get_uri_protocols");

   function gst_element_factory_has_interface (factory : access GstElementFactory; interfacename : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstelementfactory.h:159
   pragma Import (C, gst_element_factory_has_interface, "gst_element_factory_has_interface");

   function gst_element_factory_create (factory : access GstElementFactory; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstelementfactory.h:162
   pragma Import (C, gst_element_factory_create, "gst_element_factory_create");

   function gst_element_factory_make (factoryname : access GLIB.gchar; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstelementfactory.h:164
   pragma Import (C, gst_element_factory_make, "gst_element_factory_make");

  -- FIXME 0.11: move these two into our private headers  
   --  skipped func __gst_element_factory_add_static_pad_template

   --  skipped func __gst_element_factory_add_interface

   function gst_element_register
     (plugin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;
      name : access GLIB.gchar;
      rank : GLIB.guint;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gstelementfactory.h:171
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
  -- *
  -- * Since: 0.10.31
  --  

   subtype GstElementFactoryListType is GLIB.guint64;  -- gst/gstelementfactory.h:204

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_ANY:
  -- *
  -- * Elements of any of the defined GST_ELEMENT_FACTORY_LIST types
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_MEDIA_ANY:
  -- *
  -- * Elements matching any of the defined GST_ELEMENT_FACTORY_TYPE_MEDIA types
  -- *
  -- * Note: Do not use this if you wish to not filter against any of the defined
  -- * media types. If you wish to do this, simply don't specify any 
  -- * GST_ELEMENT_FACTORY_TYPE_MEDIA flag.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_VIDEO_ENCODER:
  -- *
  -- * All encoders handling video or image media types
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_AUDIO_ENCODER:
  -- *
  -- * All encoders handling audio media types
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS:
  -- *
  -- * All sinks handling audio, video or image media types
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_ELEMENT_FACTORY_TYPE_DECODABLE:
  -- *
  -- * All elements used to 'decode' streams (decoders, demuxers, parsers, depayloaders)
  -- *
  -- * Since: 0.10.31
  --  

  -- Element klass defines  
   function gst_element_factory_list_is_type (factory : access GstElementFactory; c_type : GstElementFactoryListType) return GLIB.gboolean;  -- gst/gstelementfactory.h:302
   pragma Import (C, gst_element_factory_list_is_type, "gst_element_factory_list_is_type");

   function gst_element_factory_list_get_elements (c_type : GstElementFactoryListType; minrank : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstRank) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:305
   pragma Import (C, gst_element_factory_list_get_elements, "gst_element_factory_list_get_elements");

   function gst_element_factory_list_filter
     (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      direction : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
      subsetonly : GLIB.gboolean) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelementfactory.h:309
   pragma Import (C, gst_element_factory_list_filter, "gst_element_factory_list_filter");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
