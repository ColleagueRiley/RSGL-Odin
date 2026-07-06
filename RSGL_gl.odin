package RSGL;

import "core:c"

glRenderer :: rawptr

@(default_calling_convention="c", link_prefix="RSGL_")
foreign {
    GL_rendererProc :: proc() -> rendererProc ---
    GL_size :: proc() -> c.size_t ---
    GL_renderer_init :: proc(loader : rawptr) -> ^renderer ---
    GL_renderer_initPtr :: proc(loader : rawptr, ptr : ^glRenderer, renderer : ^renderer) ---
}