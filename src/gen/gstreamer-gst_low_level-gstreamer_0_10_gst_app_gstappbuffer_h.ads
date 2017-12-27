pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappbuffer_h is

   --  unsupported macro: GST_TYPE_APP_BUFFER (gst_app_buffer_get_type())
   --  arg-macro: function GST_APP_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_APP_BUFFER,GstAppBuffer);
   --  arg-macro: function GST_APP_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_APP_BUFFER,GstAppBufferClass);
   --  arg-macro: function GST_IS_APP_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_APP_BUFFER);
   --  arg-macro: function GST_IS_APP_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_APP_BUFFER);
  -- GStreamer
  -- * Copyright (C) 2007 David Schleef <ds@schleef.org>
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

   type GstAppBuffer;
   --subtype GstAppBuffer is u_GstAppBuffer;  -- gst/app/gstappbuffer.h:38

   type GstAppBufferClass;
   --subtype GstAppBufferClass is u_GstAppBufferClass;  -- gst/app/gstappbuffer.h:39

   type GstAppBufferFinalizeFunc is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstAppBufferFinalizeFunc);  -- gst/app/gstappbuffer.h:40

   type GstAppBuffer is record
      buffer : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappbuffer.h:44
      finalize : GstAppBufferFinalizeFunc;  -- gst/app/gstappbuffer.h:47
      priv : System.Address;  -- gst/app/gstappbuffer.h:48
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppBuffer);  -- gst/app/gstappbuffer.h:42

  --< private > 
   type GstAppBufferClass is record
      buffer_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- gst/app/gstappbuffer.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppBufferClass);  -- gst/app/gstappbuffer.h:51

   function gst_app_buffer_get_type return GLIB.GType;  -- gst/app/gstappbuffer.h:56
   pragma Import (C, gst_app_buffer_get_type, "gst_app_buffer_get_type");

   function gst_app_buffer_new
     (data : System.Address;
      length : int;
      finalize : GstAppBufferFinalizeFunc;
      priv : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappbuffer.h:58
   pragma Import (C, gst_app_buffer_new, "gst_app_buffer_new");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappbuffer_h;
