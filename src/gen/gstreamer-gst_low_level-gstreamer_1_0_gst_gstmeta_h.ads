pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h is

   --  arg-macro: function GST_META_CAST (meta)
   --    return (GstMeta *)(meta);
   --  arg-macro: function GST_META_FLAGS (meta)
   --    return GST_META_CAST (meta).flags;
   --  arg-macro: procedure GST_META_FLAG_IS_SET (meta, flag)
   --    notnot(GST_META_FLAGS (meta) and (flag))
   --  arg-macro: function GST_META_FLAG_SET (meta, flag)
   --    return GST_META_FLAGS (meta) |= (flag);
   --  arg-macro: function GST_META_FLAG_UNSET (meta, flag)
   --    return GST_META_FLAGS (meta) &= ~(flag);
   GST_META_TAG_MEMORY_STR : aliased constant String := "memory" & ASCII.NUL;  --  gst/gstmeta.h:93
   --  arg-macro: function GST_META_TRANSFORM_IS_COPY (type)
   --    return (type) = _gst_meta_transform_copy;
   --  unsupported macro: GST_META_TAG_MEMORY (_gst_meta_tag_memory)

  -- GStreamer
  -- * Copyright (C) 2009 Wim Taymans <wim.taymans@gmail.be>
  -- *
  -- * gstmeta.h: Header for Metadata structures
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

   type GstMeta;
   --subtype GstMeta is u_GstMeta;  -- gst/gstmeta.h:30

   type GstMetaInfo;
   --subtype GstMetaInfo is u_GstMetaInfo;  -- gst/gstmeta.h:31

  --*
  -- * GstMetaFlags:
  -- * @GST_META_FLAG_NONE: no flags
  -- * @GST_META_FLAG_READONLY: metadata should not be modified
  -- * @GST_META_FLAG_POOLED: metadata is managed by a bufferpool
  -- * @GST_META_FLAG_LOCKED: metadata should not be removed
  -- * @GST_META_FLAG_LAST: additional flags can be added starting from this flag.
  -- *
  -- * Extra metadata flags.
  --  

   subtype GstMetaFlags is unsigned;
   GST_META_FLAG_NONE : constant GstMetaFlags := 0;
   GST_META_FLAG_READONLY : constant GstMetaFlags := 1;
   GST_META_FLAG_POOLED : constant GstMetaFlags := 2;
   GST_META_FLAG_LOCKED : constant GstMetaFlags := 4;
   GST_META_FLAG_LAST : constant GstMetaFlags := 65536;  -- gst/gstmeta.h:52

  --*
  -- * GST_META_FLAGS:
  -- * @meta: a #GstMeta.
  -- *
  -- * A flags word containing #GstMetaFlags flags set on @meta
  --  

  --*
  -- * GST_META_FLAG_IS_SET:
  -- * @meta: a #GstMeta.
  -- * @flag: the #GstMetaFlags to check.
  -- *
  -- * Gives the status of a specific flag on a metadata.
  --  

  --*
  -- * GST_META_FLAG_SET:
  -- * @meta: a #GstMeta.
  -- * @flag: the #GstMetaFlags to set.
  -- *
  -- * Sets a metadata flag on a metadata.
  --  

  --*
  -- * GST_META_FLAG_UNSET:
  -- * @meta: a #GstMeta.
  -- * @flag: the #GstMetaFlags to clear.
  -- *
  -- * Clears a metadata flag.
  --  

  --*
  -- * GST_META_TAG_MEMORY_STR:
  -- *
  -- * This metadata stays relevant as long as memory layout is unchanged.
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GstMeta:
  -- * @flags: extra flags for the metadata
  -- * @info: pointer to the #GstMetaInfo
  -- *
  -- * Base structure for metadata. Custom metadata will put this structure
  -- * as the first member of their structure.
  --  

   type GstMeta is record
      flags : aliased GstMetaFlags;  -- gst/gstmeta.h:104
      info : access constant GstMetaInfo;  -- gst/gstmeta.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, GstMeta);  -- gst/gstmeta.h:103

  --*
  -- * GstMetaInitFunction:
  -- * @meta: a #GstMeta
  -- * @params: parameters passed to the init function
  -- * @buffer: a #GstBuffer
  -- *
  -- * Function called when @meta is initialized in @buffer.
  --  

   type GstMetaInitFunction is access function 
        (arg1 : access GstMeta;
         arg2 : System.Address;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;
   pragma Convention (C, GstMetaInitFunction);  -- gst/gstmeta.h:118

  --*
  -- * GstMetaFreeFunction:
  -- * @meta: a #GstMeta
  -- * @buffer: a #GstBuffer
  -- *
  -- * Function called when @meta is freed in @buffer.
  --  

   type GstMetaFreeFunction is access procedure  (arg1 : access GstMeta; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);
   pragma Convention (C, GstMetaFreeFunction);  -- gst/gstmeta.h:127

  --*
  -- * gst_meta_transform_copy:
  -- *
  -- * GQuark for the "gst-copy" transform.
  --  

  --*
  -- * GST_META_TRANSFORM_IS_COPY:
  -- * @type: a transform type
  -- *
  -- * Check if the transform type is a copy transform
  --  

  --*
  -- * GstMetaTransformCopy:
  -- * @region: %TRUE if only region is copied
  -- * @offset: the offset to copy, 0 if @region is %FALSE, otherwise > 0
  -- * @size: the size to copy, -1 or the buffer size when @region is %FALSE
  -- *
  -- * Extra data passed to a "gst-copy" transform #GstMetaTransformFunction.
  --  

   type GstMetaTransformCopy is record
      region : aliased GLIB.gboolean;  -- gst/gstmeta.h:153
      offset : aliased GLIB.gsize;  -- gst/gstmeta.h:154
      size : aliased GLIB.gsize;  -- gst/gstmeta.h:155
   end record;
   pragma Convention (C_Pass_By_Copy, GstMetaTransformCopy);  -- gst/gstmeta.h:156

   --  skipped anonymous struct anon_152

  --*
  -- * GstMetaTransformFunction:
  -- * @transbuf: a #GstBuffer
  -- * @meta: a #GstMeta
  -- * @buffer: a #GstBuffer
  -- * @type: the transform type
  -- * @data: transform specific data.
  -- *
  -- * Function called for each @meta in @buffer as a result of performing a
  -- * transformation on @transbuf. Additional @type specific transform data
  -- * is passed to the function as @data.
  -- *
  -- * Implementations should check the @type of the transform and parse
  -- * additional type specific fields in @data that should be used to update
  -- * the metadata on @transbuf.
  -- *
  -- * Returns: %TRUE if the transform could be performed
  --  

   type GstMetaTransformFunction is access function 
        (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
         arg2 : access GstMeta;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
         arg4 : Glib.GQuark;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstMetaTransformFunction);  -- gst/gstmeta.h:176

  --*
  -- * GstMetaInfo:
  -- * @api: tag identifying the metadata structure and api
  -- * @type: type identifying the implementor of the api
  -- * @size: size of the metadata
  -- * @init_func: function for initializing the metadata
  -- * @free_func: function for freeing the metadata
  -- * @transform_func: function for transforming the metadata
  -- *
  -- * The #GstMetaInfo provides information about a specific metadata
  -- * structure.
  --  

   type GstMetaInfo is record
      api : aliased GLIB.GType;  -- gst/gstmeta.h:193
      c_type : aliased GLIB.GType;  -- gst/gstmeta.h:194
      size : aliased GLIB.gsize;  -- gst/gstmeta.h:195
      init_func : GstMetaInitFunction;  -- gst/gstmeta.h:197
      free_func : GstMetaFreeFunction;  -- gst/gstmeta.h:198
      transform_func : GstMetaTransformFunction;  -- gst/gstmeta.h:199
   end record;
   pragma Convention (C_Pass_By_Copy, GstMetaInfo);  -- gst/gstmeta.h:192

  -- No padding needed, GstMetaInfo is always allocated by GStreamer and is
  --   * not subclassable or stack-allocatable, so we can extend it as we please
  --   * just like interfaces  

   function gst_meta_api_type_register (api : access GLIB.gchar; tags : System.Address) return GLIB.GType;  -- gst/gstmeta.h:206
   pragma Import (C, gst_meta_api_type_register, "gst_meta_api_type_register");

   function gst_meta_api_type_has_tag (api : GLIB.GType; tag : Glib.GQuark) return GLIB.gboolean;  -- gst/gstmeta.h:208
   pragma Import (C, gst_meta_api_type_has_tag, "gst_meta_api_type_has_tag");

   function gst_meta_register
     (api : GLIB.GType;
      impl : access GLIB.gchar;
      size : GLIB.gsize;
      init_func : GstMetaInitFunction;
      free_func : GstMetaFreeFunction;
      transform_func : GstMetaTransformFunction) return access constant GstMetaInfo;  -- gst/gstmeta.h:210
   pragma Import (C, gst_meta_register, "gst_meta_register");

   function gst_meta_get_info (impl : access GLIB.gchar) return access constant GstMetaInfo;  -- gst/gstmeta.h:215
   pragma Import (C, gst_meta_get_info, "gst_meta_get_info");

   function gst_meta_api_type_get_tags (api : GLIB.GType) return System.Address;  -- gst/gstmeta.h:216
   pragma Import (C, gst_meta_api_type_get_tags, "gst_meta_api_type_get_tags");

  -- some default tags  
  --*
  -- * GST_META_TAG_MEMORY:
  -- *
  -- * Metadata tagged with this tag depends on the particular memory
  -- * or buffer that it is on.
  -- *
  -- * Deprecated: The GQuarks are not exported by any public API, use
  -- *   GST_META_TAG_MEMORY_STR instead.
  --  

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;
