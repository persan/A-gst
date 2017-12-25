pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;

package GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h is

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
   GST_ELEMENT_FACTORY_KLASS_DECODER : aliased constant String := "Decoder" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:285
   GST_ELEMENT_FACTORY_KLASS_ENCODER : aliased constant String := "Encoder" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:286
   GST_ELEMENT_FACTORY_KLASS_SINK : aliased constant String := "Sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:287
   GST_ELEMENT_FACTORY_KLASS_SRC : aliased constant String := "Source" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:288
   GST_ELEMENT_FACTORY_KLASS_MUXER : aliased constant String := "Muxer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:289
   GST_ELEMENT_FACTORY_KLASS_DEMUXER : aliased constant String := "Demuxer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:290
   GST_ELEMENT_FACTORY_KLASS_PARSER : aliased constant String := "Parser" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:291
   GST_ELEMENT_FACTORY_KLASS_PAYLOADER : aliased constant String := "Payloader" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:292
   GST_ELEMENT_FACTORY_KLASS_DEPAYLOADER : aliased constant String := "Depayloader" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:293
   GST_ELEMENT_FACTORY_KLASS_FORMATTER : aliased constant String := "Formatter" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:294

   GST_ELEMENT_FACTORY_KLASS_MEDIA_VIDEO : aliased constant String := "Video" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:296
   GST_ELEMENT_FACTORY_KLASS_MEDIA_AUDIO : aliased constant String := "Audio" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:297
   GST_ELEMENT_FACTORY_KLASS_MEDIA_IMAGE : aliased constant String := "Image" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:298
   GST_ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE : aliased constant String := "Subtitle" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:299
   GST_ELEMENT_FACTORY_KLASS_MEDIA_METADATA : aliased constant String := "Metadata" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstelementfactory.h:300

   type GstElementFactory;
   type anon13135_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstElementFactory is u_GstElementFactory;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:27

   type GstElementFactoryClass;
   type anon13137_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstElementFactoryClass is u_GstElementFactoryClass;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:28

   type GstElementDetails;
   type anon13371_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstElementDetails is u_GstElementDetails;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:43

   type GstElementDetails is record
      longname : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:67
      klass : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:68
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:69
      author : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:70
      u_gst_reserved : anon13371_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:73
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementDetails);  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:64

   type GstElementFactory is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:116
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:118
      details : aliased GstElementDetails;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:121
      staticpadtemplates : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:123
      numpadtemplates : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:124
      uri_type : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:127
      uri_protocols : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:128
      interfaces : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:130
      meta_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:134
      u_gst_reserved : anon13135_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:135
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementFactory);  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:115

   type GstElementFactoryClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:139
      u_gst_reserved : anon13137_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementFactoryClass);  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:138

   function gst_element_factory_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:144
   pragma Import (C, gst_element_factory_get_type, "gst_element_factory_get_type");

   function gst_element_factory_find (arg1 : access GLIB.gchar) return access GstElementFactory;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:146
   pragma Import (C, gst_element_factory_find, "gst_element_factory_find");

   function gst_element_factory_get_element_type (arg1 : access GstElementFactory) return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:148
   pragma Import (C, gst_element_factory_get_element_type, "gst_element_factory_get_element_type");

   function gst_element_factory_get_longname (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:149
   pragma Import (C, gst_element_factory_get_longname, "gst_element_factory_get_longname");

   function gst_element_factory_get_klass (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:150
   pragma Import (C, gst_element_factory_get_klass, "gst_element_factory_get_klass");

   function gst_element_factory_get_description (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:151
   pragma Import (C, gst_element_factory_get_description, "gst_element_factory_get_description");

   function gst_element_factory_get_author (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:152
   pragma Import (C, gst_element_factory_get_author, "gst_element_factory_get_author");

   function gst_element_factory_get_documentation_uri (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:153
   pragma Import (C, gst_element_factory_get_documentation_uri, "gst_element_factory_get_documentation_uri");

   function gst_element_factory_get_icon_name (arg1 : access GstElementFactory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:154
   pragma Import (C, gst_element_factory_get_icon_name, "gst_element_factory_get_icon_name");

   function gst_element_factory_get_num_pad_templates (arg1 : access GstElementFactory) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:155
   pragma Import (C, gst_element_factory_get_num_pad_templates, "gst_element_factory_get_num_pad_templates");

   function gst_element_factory_get_static_pad_templates (arg1 : access GstElementFactory) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:156
   pragma Import (C, gst_element_factory_get_static_pad_templates, "gst_element_factory_get_static_pad_templates");

   function gst_element_factory_get_uri_type (arg1 : access GstElementFactory) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:157
   pragma Import (C, gst_element_factory_get_uri_type, "gst_element_factory_get_uri_type");

   function gst_element_factory_get_uri_protocols (arg1 : access GstElementFactory) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:158
   pragma Import (C, gst_element_factory_get_uri_protocols, "gst_element_factory_get_uri_protocols");

   function gst_element_factory_has_interface (arg1 : access GstElementFactory; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:159
   pragma Import (C, gst_element_factory_has_interface, "gst_element_factory_has_interface");

   function gst_element_factory_create (arg1 : access GstElementFactory; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:162
   pragma Import (C, gst_element_factory_create, "gst_element_factory_create");

   function gst_element_factory_make (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:164
   pragma Import (C, gst_element_factory_make, "gst_element_factory_make");

   --  skipped func __gst_element_factory_add_static_pad_template

   --  skipped func __gst_element_factory_add_interface

   function gst_element_register
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:171
   pragma Import (C, gst_element_register, "gst_element_register");

   subtype GstElementFactoryListType is GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:204

   function gst_element_factory_list_is_type (arg1 : access GstElementFactory; arg2 : GstElementFactoryListType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:302
   pragma Import (C, gst_element_factory_list_is_type, "gst_element_factory_list_is_type");

   function gst_element_factory_list_get_elements (arg1 : GstElementFactoryListType; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstRank) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:305
   pragma Import (C, gst_element_factory_list_get_elements, "gst_element_factory_list_get_elements");

   function gst_element_factory_list_filter
     (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
      arg4 : GLIB.gboolean) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelementfactory.h:309
   pragma Import (C, gst_element_factory_list_filter, "gst_element_factory_list_filter");

end GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
