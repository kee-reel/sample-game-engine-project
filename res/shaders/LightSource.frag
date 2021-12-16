#version 330 core
out vec4 FragColor;

struct Light {
    vec3 ambient;
};

uniform Light light;

void main()
{
	FragColor = vec4(light.ambient, 1.0);
}
