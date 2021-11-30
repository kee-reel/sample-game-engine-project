#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;
layout (location = 2) in vec2 aTex;

out vec3 vertColor;
out vec2 texCoord;

uniform float time;

void main()
{
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
	//float x = aPos.x*aPos.x + aPos.y*aPos.y;
	//x = x*x - sin(time);
	//vertColor = vec4((1f - aCol.x) * x, aCol.y * x - cos(time), sin(time/2f) - aCol.z * x, 1.0f);
	texCoord = aTex;
}
