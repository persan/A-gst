pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gstatomicqueue_h is

   --  skipped empty struct u_GstAtomicQueue

   --  skipped empty struct GstAtomicQueue

   function gst_atomic_queue_new (arg1 : GLIB.guint) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:42
   pragma Import (C, gst_atomic_queue_new, "gst_atomic_queue_new");

   procedure gst_atomic_queue_ref (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:44
   pragma Import (C, gst_atomic_queue_ref, "gst_atomic_queue_ref");

   procedure gst_atomic_queue_unref (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:45
   pragma Import (C, gst_atomic_queue_unref, "gst_atomic_queue_unref");

   procedure gst_atomic_queue_push (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:47
   pragma Import (C, gst_atomic_queue_push, "gst_atomic_queue_push");

   function gst_atomic_queue_pop (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:48
   pragma Import (C, gst_atomic_queue_pop, "gst_atomic_queue_pop");

   function gst_atomic_queue_peek (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:49
   pragma Import (C, gst_atomic_queue_peek, "gst_atomic_queue_peek");

   function gst_atomic_queue_length (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstatomicqueue.h:51
   pragma Import (C, gst_atomic_queue_length, "gst_atomic_queue_length");

end GST_Low_Level.gstreamer_0_10_gst_gstatomicqueue_h;
