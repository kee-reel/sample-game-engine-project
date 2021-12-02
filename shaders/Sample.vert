#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;
layout (location = 2) in vec2 aTex;

out vec3 vertColor;
out vec2 texCoord;
out float pulse;

uniform float time;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0);
	vertColor = aCol;
	texCoord = aTex;
	pulse = cos(time/10.);
}
