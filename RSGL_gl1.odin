package RSGL

import "core:c"

gl1Renderer :: rawptr;

@(default_calling_convention="c", link_prefix="RSGL_")
foreign {
    GL1_rendererProc :: proc() -> rendererProc ---;
    GL1_size :: proc() -> c.size_t ---;
    GL1_renderer_init :: proc(loader : rawptr) -> ^renderer ---
    GL1_renderer_initPtr :: proc(loader : rawptr, ptr : ^gl1Renderer, renderer : ^renderer) ---
}