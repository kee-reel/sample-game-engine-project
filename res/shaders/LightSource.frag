#version 330 core
out vec4 FragColor;

in vec3 pos;
in vec2 tex;

uniform vec3 ambient;
uniform sampler2D texture0;

void main()
{
	vec3 resLightColor = ambient;
	vec4 texColor = texture(texture0, tex);
	FragColor = vec4(ambient, 1.0);//vec4(texColor.xyz * resLightColor, texColor.z);
}
