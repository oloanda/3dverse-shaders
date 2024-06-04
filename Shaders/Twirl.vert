#version 460 core

out gl_PerVertex { vec4 gl_Position; }; // required because of ARB_separate_shader_objects


const vec2 vertices[4] = vec2[4](
    vec2(0.0f, 0.0f),
    vec2(1.0f, 0.0f),
    vec2(1.0f, 1.0f),
    vec2(0.0f, 1.0f)
);

const uint indices[6] = uint[6](0,1,2,2,3,0);

smooth out vec2 TexCoord;
void main()
{
    vec2 pos  = vertices[indices[gl_VertexID]];
    gl_Position = vec4(pos * 2.0f - 1, 0.0f, 1.0f);
    TexCoord = pos;
}