#version 330 core
out vec4 FragColor;

in vec3 verColor;
in vec2 texCoord;

uniform sampler2D sampleTexture;

void main()
{
	FragColor = texture(sampleTexture, texCoord);
}
