pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
--  with GST_Low_Level.libxml2_libxml_tree_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with Interfaces.C_Streams;
--  limited with GST_Low_Level.bits_types_FILE_h;

package GST_Low_Level.gstreamer_0_10_gst_gstxml_h is

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
   type GstXML;
   type anon14999_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstXML is u_GstXML;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:42

   type GstXMLClass;
   type anon15001_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstXMLClass is u_GstXMLClass;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:43

   type GstXML is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:53
      topelements : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:56
      ns : GST_Low_Level.libxml2_libxml_tree_h.xmlNsPtr;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:58
      u_gst_reserved : anon14999_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstXML);  -- /usr/include/gstreamer-0.10/gst/gstxml.h:52

   type GstXMLClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:65
      object_loaded : access procedure
           (arg1 : access GstXML;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
            arg3 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstxml.h:68
      object_saved : access procedure
           (arg1 : access GstXML;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
            arg3 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstxml.h:69
      u_gst_reserved : anon15001_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstXMLClass);  -- /usr/include/gstreamer-0.10/gst/gstxml.h:64

   function gst_xml_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:74
   pragma Import (C, gst_xml_get_type, "gst_xml_get_type");

   function gst_xml_write (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GST_Low_Level.libxml2_libxml_tree_h.xmlDocPtr;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:78
   pragma Import (C, gst_xml_write, "gst_xml_write");

   function gst_xml_write_file (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access Interfaces.C_Streams.FILEs) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:81
   pragma Import (C, gst_xml_write_file, "gst_xml_write_file");

   function gst_xml_new return access GstXML;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:83
   pragma Import (C, gst_xml_new, "gst_xml_new");

   function gst_xml_parse_doc
     (arg1 : access GstXML;
      arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlDocPtr;
      arg3 : access GLIB.guchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:85
   pragma Import (C, gst_xml_parse_doc, "gst_xml_parse_doc");

   function gst_xml_parse_file
     (arg1 : access GstXML;
      arg2 : access GLIB.guchar;
      arg3 : access GLIB.guchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:86
   pragma Import (C, gst_xml_parse_file, "gst_xml_parse_file");

   function gst_xml_parse_memory
     (arg1 : access GstXML;
      arg2 : access GLIB.guchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:87
   pragma Import (C, gst_xml_parse_memory, "gst_xml_parse_memory");

   function gst_xml_get_element (arg1 : access GstXML; arg2 : access GLIB.guchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:90
   pragma Import (C, gst_xml_get_element, "gst_xml_get_element");

   function gst_xml_get_topelements (arg1 : access GstXML) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:91
   pragma Import (C, gst_xml_get_topelements, "gst_xml_get_topelements");

   function gst_xml_make_element (arg1 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstxml.h:93
   pragma Import (C, gst_xml_make_element, "gst_xml_make_element");

end GST_Low_Level.gstreamer_0_10_gst_gstxml_h;
