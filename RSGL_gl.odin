package RSGL;

import "core:c"

glRenderer :: rawptr

@(default_calling_convention="c", link_prefix="RSGL_")
foreign {
    GL_rendererProc :: proc() -> rendererProc ---;
    GL_size :: proc() -> c.size_t ---;
}