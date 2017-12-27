# A-gst
Ada binding to the GStreamer library.

## Current state of the library.
The library consits at the moment mostly of Ada-spec:s generated from the all the gstreamer header-files
and they are located in the private package herachy "GStreamer.GST_Low_Level".


## Remaning work to be done is to:
* Write Ada-style glib-bindings using the herachy "GStreamer", as it's done for other glib classes in GTK-Ada.
* Write/generate simple testcases for the GStreamer.* packages to validate the bindings.


## Architectural considerations.
The package herachy "GStreamer.GST_Low_Level" is intended for internal use only and threfore private. 
The other packagdes in GStreamer which contains proper Ada-glib objects shall folow naming and structure in 
acordance with the schema used in GTKAda.

