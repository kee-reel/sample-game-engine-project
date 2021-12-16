#version 330 core
out vec4 FragColor;

in vec3 pos;
in vec3 norm;
in vec2 tex;

uniform vec3 ambient;
uniform vec3 lightPos;
uniform vec3 lightColor;
uniform sampler2D texture0;

void main()
{
	vec3 lightDir = normalize(lightPos - pos);
	vec3 diffuse = max(dot(norm, lightDir), 0.) * lightColor;
	vec3 resLightColor = diffuse;//ambient + diffuse;
	vec4 texColor = texture(texture0, tex);
	FragColor = vec4(texColor.xyz * resLightColor, texColor.z);
}
