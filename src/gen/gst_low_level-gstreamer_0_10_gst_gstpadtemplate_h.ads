pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h is

   --  unsupported macro: GST_TYPE_STATIC_PAD_TEMPLATE (gst_static_pad_template_get_type ())
   --  unsupported macro: GST_TYPE_PAD_TEMPLATE (gst_pad_template_get_type ())
   --  arg-macro: function GST_PAD_TEMPLATE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PAD_TEMPLATE,GstPadTemplate);
   --  arg-macro: function GST_PAD_TEMPLATE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PAD_TEMPLATE,GstPadTemplateClass);
   --  arg-macro: function GST_IS_PAD_TEMPLATE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PAD_TEMPLATE);
   --  arg-macro: function GST_IS_PAD_TEMPLATE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PAD_TEMPLATE);
   --  arg-macro: function GST_PAD_TEMPLATE_NAME_TEMPLATE (templ)
   --    return ((GstPadTemplate *)(templ)).name_template;
   --  arg-macro: function GST_PAD_TEMPLATE_DIRECTION (templ)
   --    return ((GstPadTemplate *)(templ)).direction;
   --  arg-macro: function GST_PAD_TEMPLATE_PRESENCE (templ)
   --    return ((GstPadTemplate *)(templ)).presence;
   --  arg-macro: function GST_PAD_TEMPLATE_CAPS (templ)
   --    return ((GstPadTemplate *)(templ)).caps;
   --  arg-macro: function GST_PAD_TEMPLATE_IS_FIXED (templ)
   --    return GST_OBJECT_FLAG_IS_SET(templ, GST_PAD_TEMPLATE_FIXED);
   --  arg-macro: procedure GST_STATIC_PAD_TEMPLATE (padname, dir, pres, caps)
   --    { padname, dir, pres, caps }
   type GstPadTemplateClass;
   type anon12695_u_gst_reserved_array is array (0 .. 3) of System.Address;

   type GstStaticPadTemplate;
   --subtype GstStaticPadTemplate is u_GstStaticPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:41

   type GstPadPresence is
     (GST_PAD_ALWAYS,
      GST_PAD_SOMETIMES,
      GST_PAD_REQUEST);
   pragma Convention (C, GstPadPresence);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:64

   subtype GstPadTemplateFlags is unsigned;
   GST_PAD_TEMPLATE_FIXED : constant GstPadTemplateFlags := 16;
   GST_PAD_TEMPLATE_FLAG_LAST : constant GstPadTemplateFlags := 256;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:110

   type anon12671_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstPadTemplate is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:126
      name_template : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:128
      direction : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:129
      presence : aliased GstPadPresence;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:130
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:131
      u_gst_reserved : anon12671_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:133
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadTemplate);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:125

   type GstPadTemplateClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:137
      pad_created : access procedure  (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:140
      u_gst_reserved : anon12695_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:142
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadTemplateClass);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:136

   type GstStaticPadTemplate is record
      name_template : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:155
      direction : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:156
      presence : aliased GstPadPresence;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:157
      static_caps : aliased GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstStaticCaps;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:158
   end record;
   pragma Convention (C_Pass_By_Copy, GstStaticPadTemplate);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:154

   function gst_pad_template_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:180
   pragma Import (C, gst_pad_template_get_type, "gst_pad_template_get_type");

   function gst_static_pad_template_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:181
   pragma Import (C, gst_static_pad_template_get_type, "gst_static_pad_template_get_type");

   function gst_pad_template_new
     (arg1 : access GLIB.gchar;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
      arg3 : GstPadPresence;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:183
   pragma Import (C, gst_pad_template_new, "gst_pad_template_new");

   function gst_static_pad_template_get (arg1 : access GstStaticPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:187
   pragma Import (C, gst_static_pad_template_get, "gst_static_pad_template_get");

   function gst_static_pad_template_get_caps (arg1 : access GstStaticPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:188
   pragma Import (C, gst_static_pad_template_get_caps, "gst_static_pad_template_get_caps");

   function gst_pad_template_get_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:189
   pragma Import (C, gst_pad_template_get_caps, "gst_pad_template_get_caps");

   procedure gst_pad_template_pad_created (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpadtemplate.h:191
   pragma Import (C, gst_pad_template_pad_created, "gst_pad_template_pad_created");

end GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
