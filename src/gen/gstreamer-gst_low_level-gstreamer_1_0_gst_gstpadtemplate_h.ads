pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstpadtemplate.h: Header for GstPadTemplate object
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

   type GstPadTemplate;
   type GstPadTemplate_u_gst_reserved_array is array (0 .. 3) of System.Address;
   subtype GstPadTemplate is GstPadTemplate;  -- gst/gstpadtemplate.h:29

   type GstPadTemplateClass;
   type GstPadTemplateClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --  subtype GstPadTemplateClass is GstPadTemplateClass;  -- gst/gstpadtemplate.h:30

   type GstStaticPadTemplate;
   --subtype GstStaticPadTemplate is u_GstStaticPadTemplate;  -- gst/gstpadtemplate.h:31

  --*
  -- * GstPadPresence:
  -- * @GST_PAD_ALWAYS: the pad is always available
  -- * @GST_PAD_SOMETIMES: the pad will become available depending on the media stream
  -- * @GST_PAD_REQUEST: the pad is only available on request with
  -- *  gst_element_request_pad().
  -- *
  -- * Indicates when this pad will become available.
  --  

   type GstPadPresence is 
     (GST_PAD_ALWAYS,
      GST_PAD_SOMETIMES,
      GST_PAD_REQUEST);
   pragma Convention (C, GstPadPresence);  -- gst/gstpadtemplate.h:63

  --*
  -- * GST_PAD_TEMPLATE_NAME_TEMPLATE:
  -- * @templ: the template to query
  -- *
  -- * Get the nametemplate of the padtemplate.
  --  

  --*
  -- * GST_PAD_TEMPLATE_DIRECTION:
  -- * @templ: the template to query
  -- *
  -- * Get the #GstPadDirection of the padtemplate.
  --  

  --*
  -- * GST_PAD_TEMPLATE_PRESENCE:
  -- * @templ: the template to query
  -- *
  -- * Get the #GstPadPresence of the padtemplate.
  --  

  --*
  -- * GST_PAD_TEMPLATE_CAPS:
  -- * @templ: the template to query
  -- *
  -- * Get a handle to the padtemplate #GstCaps
  --  

  --*
  -- * GstPadTemplateFlags:
  -- * @GST_PAD_TEMPLATE_FLAG_LAST: first flag that can be used by subclasses.
  -- *
  -- * Flags for the padtemplate
  --  

  -- padding  
   subtype GstPadTemplateFlags is unsigned;
   GST_PAD_TEMPLATE_FLAG_LAST : constant GstPadTemplateFlags := 256;  -- gst/gstpadtemplate.h:106

  --*
  -- * GST_PAD_TEMPLATE_IS_FIXED:
  -- * @templ: the template to query
  -- *
  -- * Check if the properties of the padtemplate are fixed
  --  

  --*
  -- * GstPadTemplate:
  -- *
  -- * The padtemplate object.
  --  

   type GstPadTemplate is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstpadtemplate.h:122
      name_template : access GLIB.gchar;  -- gst/gstpadtemplate.h:124
      direction : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;  -- gst/gstpadtemplate.h:125
      presence : aliased GstPadPresence;  -- gst/gstpadtemplate.h:126
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpadtemplate.h:127
      u_gst_reserved : GstPadTemplate_u_gst_reserved_array;  -- gst/gstpadtemplate.h:130
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadTemplate);  -- gst/gstpadtemplate.h:121

  --< private > 
   type GstPadTemplateClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstpadtemplate.h:134
      pad_created : access procedure  (arg1 : access GstPadTemplate; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/gstpadtemplate.h:137
      u_gst_reserved : GstPadTemplateClass_u_gst_reserved_array;  -- gst/gstpadtemplate.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadTemplateClass);  -- gst/gstpadtemplate.h:133

  -- signal callbacks  
  --< private > 
  --*
  -- * GstStaticPadTemplate:
  -- * @name_template: the name of the template
  -- * @direction: the direction of the template
  -- * @presence: the presence of the template
  -- * @static_caps: the caps of the template.
  -- *
  -- * Structure describing the #GstStaticPadTemplate.
  --  

   type GstStaticPadTemplate is record
      name_template : access GLIB.gchar;  -- gst/gstpadtemplate.h:153
      direction : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;  -- gst/gstpadtemplate.h:154
      presence : aliased GstPadPresence;  -- gst/gstpadtemplate.h:155
      static_caps : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstStaticCaps;  -- gst/gstpadtemplate.h:156
   end record;
   pragma Convention (C_Pass_By_Copy, GstStaticPadTemplate);  -- gst/gstpadtemplate.h:152

  --*
  -- * GST_STATIC_PAD_TEMPLATE:
  -- * @padname: the name template of the pad
  -- * @dir: the GstPadDirection of the pad
  -- * @pres: the GstPadPresence of the pad
  -- * @caps: the GstStaticCaps of the pad
  -- *
  -- * Convenience macro to fill the values of a GstStaticPadTemplate
  -- * structure.
  --  

  -- templates and factories  
   function gst_pad_template_get_type return GLIB.GType;  -- gst/gstpadtemplate.h:178
   pragma Import (C, gst_pad_template_get_type, "gst_pad_template_get_type");

   function gst_static_pad_template_get_type return GLIB.GType;  -- gst/gstpadtemplate.h:179
   pragma Import (C, gst_static_pad_template_get_type, "gst_static_pad_template_get_type");

   function gst_pad_template_new
     (name_template : access GLIB.gchar;
      direction : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
      presence : GstPadPresence;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GstPadTemplate;  -- gst/gstpadtemplate.h:181
   pragma Import (C, gst_pad_template_new, "gst_pad_template_new");

   function gst_static_pad_template_get (pad_template : access GstStaticPadTemplate) return access GstPadTemplate;  -- gst/gstpadtemplate.h:185
   pragma Import (C, gst_static_pad_template_get, "gst_static_pad_template_get");

   function gst_static_pad_template_get_caps (templ : access GstStaticPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpadtemplate.h:186
   pragma Import (C, gst_static_pad_template_get_caps, "gst_static_pad_template_get_caps");

   function gst_pad_template_get_caps (templ : access GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpadtemplate.h:187
   pragma Import (C, gst_pad_template_get_caps, "gst_pad_template_get_caps");

   procedure gst_pad_template_pad_created (templ : access GstPadTemplate; pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/gstpadtemplate.h:189
   pragma Import (C, gst_pad_template_pad_created, "gst_pad_template_pad_created");

   procedure glib_autoptr_cleanup_GstPadTemplate (u_ptr : System.Address);  -- gst/gstpadtemplate.h:192
   pragma Import (C, glib_autoptr_cleanup_GstPadTemplate, "glib_autoptr_cleanup_GstPadTemplate");

   type GstPadTemplate_autoptr is access all GstPadTemplate;  -- gst/gstpadtemplate.h:192

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
