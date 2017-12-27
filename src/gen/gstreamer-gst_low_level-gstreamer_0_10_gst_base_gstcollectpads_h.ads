pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads_h is

   --  unsupported macro: GST_TYPE_COLLECT_PADS (gst_collect_pads_get_type())
   --  arg-macro: function GST_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_COLLECT_PADS,GstCollectPads);
   --  arg-macro: function GST_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_COLLECT_PADS_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_IS_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_IS_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_COLLECT_PADS_GET_PAD_LOCK (pads)
   --    return ((GstCollectPads *)pads).abidata.ABI.pad_lock;
   --  arg-macro: function GST_COLLECT_PADS_PAD_LOCK (pads)
   --    return g_mutex_lock(GST_COLLECT_PADS_GET_PAD_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_PAD_UNLOCK (pads)
   --    return g_mutex_unlock(GST_COLLECT_PADS_GET_PAD_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_GET_COND (pads)
   --    return ((GstCollectPads *)pads).cond;
   --  arg-macro: function GST_COLLECT_PADS_WAIT (pads)
   --    return g_cond_wait (GST_COLLECT_PADS_GET_COND (pads), GST_OBJECT_GET_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_SIGNAL (pads)
   --    return g_cond_signal (GST_COLLECT_PADS_GET_COND (pads));
   --  arg-macro: function GST_COLLECT_PADS_BROADCAST (pads)
   --    return g_cond_broadcast (GST_COLLECT_PADS_GET_COND (pads));
  -- GStreamer
  -- * Copyright (C) 2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstcollect_pads.h:
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

   type GstCollectData;
   type anon_301;
   type anon_302 is record
      flushing : aliased GLIB.gboolean;  -- gst/base/gstcollectpads.h:98
      new_segment : aliased GLIB.gboolean;  -- gst/base/gstcollectpads.h:99
      eos : aliased GLIB.gboolean;  -- gst/base/gstcollectpads.h:100
      refcount : aliased GLIB.gint;  -- gst/base/gstcollectpads.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, anon_302);
   type u_GstCollectData_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_301 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_302;  -- gst/base/gstcollectpads.h:102
         when others =>
            u_gst_reserved : u_GstCollectData_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:104
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_301);
   pragma Unchecked_Union (anon_301);--subtype GstCollectData is u_GstCollectData;  -- gst/base/gstcollectpads.h:36

   type GstCollectPads;
   type anon_303;
   type anon_304 is record
      pad_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstcollectpads.h:162
      pad_list : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstcollectpads.h:163
      pad_cookie : aliased GLIB.guint32;  -- gst/base/gstcollectpads.h:164
      priv : System.Address;  -- gst/base/gstcollectpads.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, anon_304);
   type u_GstCollectPads_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_303 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_304;  -- gst/base/gstcollectpads.h:166
         when others =>
            u_gst_reserved : u_GstCollectPads_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:168
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_303);
   pragma Unchecked_Union (anon_303);--subtype GstCollectPads is u_GstCollectPads;  -- gst/base/gstcollectpads.h:37

   --  skipped empty struct u_GstCollectPadsPrivate

   --  skipped empty struct GstCollectPadsPrivate

   type GstCollectPadsClass;
   type u_GstCollectPadsClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPadsClass is u_GstCollectPadsClass;  -- gst/base/gstcollectpads.h:39

  --*
  -- * GstCollectDataDestroyNotify:
  -- * @data: the #GstCollectData that will be freed
  -- *
  -- * A function that will be called when the #GstCollectData will be freed.
  -- * It is passed the pointer to the structure and should free any custom
  -- * memory and resources allocated for it.
  -- *
  -- * Since: 0.10.12
  --  

   type GstCollectDataDestroyNotify is access procedure  (arg1 : access GstCollectData);
   pragma Convention (C, GstCollectDataDestroyNotify);  -- gst/base/gstcollectpads.h:51

  --*
  -- * GstCollectPadsClipFunction:
  -- * @pads: a #GstCollectPads 
  -- * @data: a #GstCollectData 
  -- * @buffer: a #GstBuffer 
  -- * @user_data: user data 
  -- *
  -- * A function that will be called when @buffer is received on the pad managed
  -- * by @data in the collecpad object @pads.
  -- *
  -- * The function should use the segment of @data and the negotiated media type on
  -- * the pad to perform clipping of @buffer. 
  -- *
  -- * This function takes ownership of @buffer.
  -- *
  -- * Returns: a #GstBuffer that contains the clipped data of @buffer or NULL when
  -- * the buffer has been clipped completely.
  -- *
  -- * Since: 0.10.26
  --  

   type GstCollectPadsClipFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
   pragma Convention (C, GstCollectPadsClipFunction);  -- gst/base/gstcollectpads.h:73

  --*
  -- * GstCollectData:
  -- * @collect: owner #GstCollectPads
  -- * @pad: #GstPad managed by this data
  -- * @buffer: currently queued buffer.
  -- * @pos: position in the buffer
  -- * @segment: last segment received.
  -- *
  -- * Structure used by the collect_pads.
  --  

  -- with LOCK of @collect  
   type GstCollectData is record
      collect : access GstCollectPads;  -- gst/base/gstcollectpads.h:89
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstcollectpads.h:90
      buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:91
      pos : aliased GLIB.guint;  -- gst/base/gstcollectpads.h:92
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstcollectpads.h:93
      abidata : aliased anon_301;  -- gst/base/gstcollectpads.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectData);  -- gst/base/gstcollectpads.h:86

  --< private > 
  -- adding + 0 to mark ABI change to be undone later  
  --*
  -- * GstCollectPadsFunction:
  -- * @pads: the #GstCollectPads that triggered the callback
  -- * @user_data: user data passed to gst_collect_pads_set_function()
  -- *
  -- * A function that will be called when all pads have received data.
  -- *
  -- * Returns: #GST_FLOW_OK for success
  --  

   type GstCollectPadsFunction is access function  (arg1 : access GstCollectPads; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPadsFunction);  -- gst/base/gstcollectpads.h:117

  --*
  -- * GstCollectPads:
  -- * @data: #GList of #GstCollectData managed by this #GstCollectPads.
  -- *
  -- * Collectpads object.
  -- * Note that @data is only reliable for iterating the list of #GstCollectData
  -- * when inside the #GstCollectPadsFunction callback.
  --  

   type GstCollectPads is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/base/gstcollectpads.h:137
      data : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstcollectpads.h:140
      cookie : aliased GLIB.guint32;  -- gst/base/gstcollectpads.h:143
      cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstcollectpads.h:146
      func : GstCollectPadsFunction;  -- gst/base/gstcollectpads.h:148
      user_data : System.Address;  -- gst/base/gstcollectpads.h:149
      numpads : aliased GLIB.guint;  -- gst/base/gstcollectpads.h:151
      queuedpads : aliased GLIB.guint;  -- gst/base/gstcollectpads.h:152
      eospads : aliased GLIB.guint;  -- gst/base/gstcollectpads.h:153
      started : aliased GLIB.gboolean;  -- gst/base/gstcollectpads.h:156
      abidata : aliased anon_303;  -- gst/base/gstcollectpads.h:169
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads);  -- gst/base/gstcollectpads.h:136

  --< public > 
  -- with LOCK  
  -- list of CollectData items  
  --< private > 
  -- @data list cookie  
  -- with LOCK  
  -- to signal removal of data  
  -- function and user_data for callback  
  -- number of pads in @data  
  -- number of pads with a buffer  
  -- number of pads that are EOS  
  -- with LOCK and PAD_LOCK 
  --< private > 
  -- since 0.10.6  
  -- with PAD_LOCK  
  -- used to serialize add/remove  
  -- updated pad list  
  -- updated cookie  
  -- adding + 0 to mark ABI change to be undone later  
   type GstCollectPadsClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/base/gstcollectpads.h:173
      u_gst_reserved : u_GstCollectPadsClass_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPadsClass);  -- gst/base/gstcollectpads.h:172

  --< private > 
   function gst_collect_pads_get_type return GLIB.GType;  -- gst/base/gstcollectpads.h:179
   pragma Import (C, gst_collect_pads_get_type, "gst_collect_pads_get_type");

  -- creating the object  
   function gst_collect_pads_new return access GstCollectPads;  -- gst/base/gstcollectpads.h:182
   pragma Import (C, gst_collect_pads_new, "gst_collect_pads_new");

  -- set the callbacks  
   procedure gst_collect_pads_set_function
     (pads : access GstCollectPads;
      func : GstCollectPadsFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads.h:185
   pragma Import (C, gst_collect_pads_set_function, "gst_collect_pads_set_function");

   procedure gst_collect_pads_set_clip_function
     (pads : access GstCollectPads;
      clipfunc : GstCollectPadsClipFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads.h:187
   pragma Import (C, gst_collect_pads_set_clip_function, "gst_collect_pads_set_clip_function");

  -- pad management  
   function gst_collect_pads_add_pad
     (pads : access GstCollectPads;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      size : GLIB.guint) return access GstCollectData;  -- gst/base/gstcollectpads.h:191
   pragma Import (C, gst_collect_pads_add_pad, "gst_collect_pads_add_pad");

   function gst_collect_pads_add_pad_full
     (pads : access GstCollectPads;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      size : GLIB.guint;
      destroy_notify : GstCollectDataDestroyNotify) return access GstCollectData;  -- gst/base/gstcollectpads.h:192
   pragma Import (C, gst_collect_pads_add_pad_full, "gst_collect_pads_add_pad_full");

   function gst_collect_pads_remove_pad (pads : access GstCollectPads; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/base/gstcollectpads.h:195
   pragma Import (C, gst_collect_pads_remove_pad, "gst_collect_pads_remove_pad");

   function gst_collect_pads_is_active (pads : access GstCollectPads; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/base/gstcollectpads.h:196
   pragma Import (C, gst_collect_pads_is_active, "gst_collect_pads_is_active");

  -- start/stop collection  
   function gst_collect_pads_collect (pads : access GstCollectPads) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstcollectpads.h:199
   pragma Import (C, gst_collect_pads_collect, "gst_collect_pads_collect");

   function gst_collect_pads_collect_range
     (pads : access GstCollectPads;
      offset : GLIB.guint64;
      length : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstcollectpads.h:200
   pragma Import (C, gst_collect_pads_collect_range, "gst_collect_pads_collect_range");

   procedure gst_collect_pads_start (pads : access GstCollectPads);  -- gst/base/gstcollectpads.h:202
   pragma Import (C, gst_collect_pads_start, "gst_collect_pads_start");

   procedure gst_collect_pads_stop (pads : access GstCollectPads);  -- gst/base/gstcollectpads.h:203
   pragma Import (C, gst_collect_pads_stop, "gst_collect_pads_stop");

   procedure gst_collect_pads_set_flushing (pads : access GstCollectPads; flushing : GLIB.gboolean);  -- gst/base/gstcollectpads.h:204
   pragma Import (C, gst_collect_pads_set_flushing, "gst_collect_pads_set_flushing");

  -- get collected buffers  
   function gst_collect_pads_peek (pads : access GstCollectPads; data : access GstCollectData) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:207
   pragma Import (C, gst_collect_pads_peek, "gst_collect_pads_peek");

   function gst_collect_pads_pop (pads : access GstCollectPads; data : access GstCollectData) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:208
   pragma Import (C, gst_collect_pads_pop, "gst_collect_pads_pop");

  -- get collected bytes  
   function gst_collect_pads_available (pads : access GstCollectPads) return GLIB.guint;  -- gst/base/gstcollectpads.h:211
   pragma Import (C, gst_collect_pads_available, "gst_collect_pads_available");

   function gst_collect_pads_read
     (pads : access GstCollectPads;
      data : access GstCollectData;
      bytes : System.Address;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstcollectpads.h:212
   pragma Import (C, gst_collect_pads_read, "gst_collect_pads_read");

   function gst_collect_pads_read_buffer
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:214
   pragma Import (C, gst_collect_pads_read_buffer, "gst_collect_pads_read_buffer");

   function gst_collect_pads_take_buffer
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:216
   pragma Import (C, gst_collect_pads_take_buffer, "gst_collect_pads_take_buffer");

   function gst_collect_pads_flush
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstcollectpads.h:218
   pragma Import (C, gst_collect_pads_flush, "gst_collect_pads_flush");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads_h;
