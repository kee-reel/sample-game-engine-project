#version 330 core
out vec4 FragColor;

in vec3 vertColor;
in vec2 texCoord;
in float pulse;

uniform sampler2D texture0;
uniform sampler2D texture1;

void main()
{
	//FragColor = texture(sampleTexture, texCoord) - vec4(vertColor, 1.0);
	FragColor = mix(texture(texture0, texCoord), texture(texture1, texCoord), 0.9+abs(pulse)/10.);
}
