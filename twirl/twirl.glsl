void twirl_uv(in vec2 TexCoord, in float iTime, out vec2 uvOffset)
{
   vec2 uv = TexCoord - 0.5;
   float angle = atan(uv.y, uv.x);
   float radius = length(uv);
   angle += radius * iTime;

   uvOffset = radius * vec2(cos(angle), sin(angle));
}