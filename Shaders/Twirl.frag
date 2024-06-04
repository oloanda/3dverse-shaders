#version 460 core

out vec4 FragColor;


smooth in vec2 TexCoord;


layout(binding = 0)
uniform sampler2D textureMap;


layout(location = 0)
uniform float twirlAmount;



void main()
{
   vec2 uv = TexCoord - 0.5;

   float angle = atan(uv.y, uv.x);

  
   float radius = length(uv);


   angle += radius * twirlAmount;

   vec2 shifted = radius * vec2(cos(angle), sin(angle));


   FragColor = texture(textureMap, (shifted + 0.5));
}