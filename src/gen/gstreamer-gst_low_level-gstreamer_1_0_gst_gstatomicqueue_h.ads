pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstatomicqueue_h is

   --  unsupported macro: GST_TYPE_ATOMIC_QUEUE (gst_atomic_queue_get_type())
  -- GStreamer
  -- * Copyright (C) 2009-2010 Edward Hervey <bilboed@bilboed.com>
  -- *           (C) 2011 Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * gstatomicqueue.h:
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
  -- * GstAtomicQueue:
  -- *
  -- * Opaque atomic data queue.
  -- *
  -- * Use the accessor functions to get the stored values.
  --  

   --  skipped empty struct u_GstAtomicQueue

   --  skipped empty struct GstAtomicQueue

   function gst_atomic_queue_get_type return GLIB.GType;  -- gst/gstatomicqueue.h:43
   pragma Import (C, gst_atomic_queue_get_type, "gst_atomic_queue_get_type");

   function gst_atomic_queue_new (initial_size : GLIB.guint) return System.Address;  -- gst/gstatomicqueue.h:45
   pragma Import (C, gst_atomic_queue_new, "gst_atomic_queue_new");

   procedure gst_atomic_queue_ref (queue : System.Address);  -- gst/gstatomicqueue.h:47
   pragma Import (C, gst_atomic_queue_ref, "gst_atomic_queue_ref");

   procedure gst_atomic_queue_unref (queue : System.Address);  -- gst/gstatomicqueue.h:48
   pragma Import (C, gst_atomic_queue_unref, "gst_atomic_queue_unref");

   procedure gst_atomic_queue_push (queue : System.Address; data : System.Address);  -- gst/gstatomicqueue.h:50
   pragma Import (C, gst_atomic_queue_push, "gst_atomic_queue_push");

   function gst_atomic_queue_pop (queue : System.Address) return System.Address;  -- gst/gstatomicqueue.h:51
   pragma Import (C, gst_atomic_queue_pop, "gst_atomic_queue_pop");

   function gst_atomic_queue_peek (queue : System.Address) return System.Address;  -- gst/gstatomicqueue.h:52
   pragma Import (C, gst_atomic_queue_peek, "gst_atomic_queue_peek");

   function gst_atomic_queue_length (queue : System.Address) return GLIB.guint;  -- gst/gstatomicqueue.h:54
   pragma Import (C, gst_atomic_queue_length, "gst_atomic_queue_length");

   procedure glib_autoptr_cleanup_GstAtomicQueue (u_ptr : System.Address);  -- gst/gstatomicqueue.h:57
   pragma Import (C, glib_autoptr_cleanup_GstAtomicQueue, "glib_autoptr_cleanup_GstAtomicQueue");

   type GstAtomicQueue_autoptr is new System.Address;  -- gst/gstatomicqueue.h:57

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstatomicqueue_h;
