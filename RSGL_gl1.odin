package RSGL

import "core:c"

gl1Renderer :: rawptr;

@(default_calling_convention="c", link_prefix="RSGL_")
foreign {
    GL1_rendererProc :: proc() -> rendererProc ---;
    GL1_size :: proc() -> c.size_t ---;
}