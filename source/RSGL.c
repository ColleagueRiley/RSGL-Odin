#define RSGL_DEBUG
#define RSGLDEF
#define RSGL_IMPLEMENTATION
#define RSGL_NO_GL_LOADER
#include "RSGL/RSGL.h"

#define GLAD_MALLOC RSGL_MALLOC 
#define GLAD_FREE RSGL_FREE
#define GLAD_GL_IMPLEMENTATION
#include "glad.h"

#define RSGL_GL_LOAD_WITH_GLAD
#define RSGL_GL1_LOAD_WITH_GLAD

#include "RSGL/renderers/RSGL_gl1.h"
#include "RSGL/renderers/RSGL_gl.h"