#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;

out vec4 vertexColor;

uniform float time;

void main()
{
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
	float x = aPos.x*aPos.x + aPos.y*aPos.y;
	x = x*x - sin(time);
	vertexColor = vec4((1f - aCol.x) * x,  aCol.y * x, aCol.z * x, 1.0f);
}
