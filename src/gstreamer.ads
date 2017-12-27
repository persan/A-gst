package GStreamer is
   pragma Linker_Options ("-lgstreamer-0.10");
   pragma Linker_Options ("-lgobject-2.0");
   pragma Linker_Options ("-lgmodule-2.0");
   pragma Linker_Options ("-lgthread-2.0");
   pragma Linker_Options ("-lglib-2.0");
   pragma Linker_Options ("-lxml2");

end GStreamer;
