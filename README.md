# A-gst
Ada binding to the GStreamer library.

## Current state of the library.
The library consits at the moment only of compilable Ada-spec:s generated from the all th gstreamer header-files
and they are located in the package herachy "GST_Low_Level".


## Remaning work to be done is to:
* write Ada-style glib-bindings using the herachy "GStreamer", as it's done for other glib classes in GTK-Ada.
* write/generate simple testcases for the GStreamer.* packages to validate the bindings.


## Architectural considerations.
The package herachy "GST_Low_Level" is intended for internal use only and shall never be referenced direct by clients. Clients shall use
packages in the herachy "GStreamer" which shall contain proper Ada-glib objects with naming and structure in acordance with thw schema used in GTKAda.

