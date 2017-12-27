pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
--  with GStreamer.GST_Low_Level.libxml2_libxml_tree_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with Interfaces.C_Streams;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstxml_h is

   --  unsupported macro: GST_TYPE_XML (gst_xml_get_type ())
   --  arg-macro: function GST_XML (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_XML, GstXML);
   --  arg-macro: function GST_IS_XML (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_XML);
   --  arg-macro: function GST_XML_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_XML, GstXMLClass);
   --  arg-macro: function GST_IS_XML_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_XML);
   --  arg-macro: function GST_XML_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_XML, GstXMLClass);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstxml.h: Header for XML save/restore operations of pipelines
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

   type GstXML;
   type u_GstXML_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstXML is u_GstXML;  -- gst/gstxml.h:42

   type GstXMLClass;
   type u_GstXMLClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstXMLClass is u_GstXMLClass;  -- gst/gstxml.h:43

  --*
  -- * GstXML:
  -- * @topelements: list of element nodes
  -- * @ns: name space
  -- *
  -- * XML parser object
  --  

   type GstXML is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstxml.h:53
      topelements : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstxml.h:56
      ns : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNsPtr;  -- gst/gstxml.h:58
      u_gst_reserved : u_GstXML_u_gst_reserved_array;  -- gst/gstxml.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstXML);  -- gst/gstxml.h:52

  --< public > 
  --< private > 
   type GstXMLClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstxml.h:65
      object_loaded : access procedure 
           (arg1 : access GstXML;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
            arg3 : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstxml.h:68
      object_saved : access procedure 
           (arg1 : access GstXML;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
            arg3 : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstxml.h:69
      u_gst_reserved : u_GstXMLClass_u_gst_reserved_array;  -- gst/gstxml.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstXMLClass);  -- gst/gstxml.h:64

  -- signal callbacks  
   function gst_xml_get_type return GLIB.GType;  -- gst/gstxml.h:74
   pragma Import (C, gst_xml_get_type, "gst_xml_get_type");

  -- create an XML document out of a pipeline  
   function gst_xml_write (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlDocPtr;  -- gst/gstxml.h:78
   pragma Import (C, gst_xml_write, "gst_xml_write");

  -- write a formatted representation of a pipeline to an open file  
   function gst_xml_write_file (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; c_out : Interfaces.C_Streams.FILEs) return GLIB.gint;  -- gst/gstxml.h:81
   pragma Import (C, gst_xml_write_file, "gst_xml_write_file");

   function gst_xml_new return access GstXML;  -- gst/gstxml.h:83
   pragma Import (C, gst_xml_new, "gst_xml_new");

   function gst_xml_parse_doc
     (xml : access GstXML;
      doc : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlDocPtr;
      root : access GLIB.guchar) return GLIB.gboolean;  -- gst/gstxml.h:85
   pragma Import (C, gst_xml_parse_doc, "gst_xml_parse_doc");

   function gst_xml_parse_file
     (xml : access GstXML;
      fname : access GLIB.guchar;
      root : access GLIB.guchar) return GLIB.gboolean;  -- gst/gstxml.h:86
   pragma Import (C, gst_xml_parse_file, "gst_xml_parse_file");

   function gst_xml_parse_memory
     (xml : access GstXML;
      buffer : access GLIB.guchar;
      size : GLIB.guint;
      root : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstxml.h:87
   pragma Import (C, gst_xml_parse_memory, "gst_xml_parse_memory");

   function gst_xml_get_element (xml : access GstXML; name : access GLIB.guchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstxml.h:90
   pragma Import (C, gst_xml_get_element, "gst_xml_get_element");

   function gst_xml_get_topelements (xml : access GstXML) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstxml.h:91
   pragma Import (C, gst_xml_get_topelements, "gst_xml_get_topelements");

   function gst_xml_make_element (cur : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr; parent : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstxml.h:93
   pragma Import (C, gst_xml_make_element, "gst_xml_make_element");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstxml_h;
