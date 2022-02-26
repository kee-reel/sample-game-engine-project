#version 330 core
out vec4 FragColor;

in vec3 pos;
in vec3 norm;
in vec2 tex;

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    sampler2D emission;
    float shininess;
}; 
  
uniform Material material;

struct Light {
    vec3 position;
  
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};

uniform Light light;

uniform vec3 viewPosition;

void main()
{
	vec3 lightDir = normalize(light.position - pos);

	vec3 ambient = light.ambient * texture(material.diffuse, tex).xyz;

	float diff = max(dot(norm, lightDir), 0.);
	vec3 diffuse = light.diffuse * diff * texture(material.diffuse, tex).xyz;

	vec3 reflectionDir = reflect(-lightDir, norm);
	vec3 viewDir = normalize(viewPosition - pos);
	float spec = pow(max(dot(viewDir, reflectionDir), 0.0), material.shininess);
	vec3 specular = light.specular * spec * texture(material.specular, tex).xyz;

	vec3 emission_tex = texture(material.emission, tex).xyz;
	float emission = max(emission_tex.x - 4*diff, 0);

	vec3 result = ambient + diffuse + specular + (emission * emission_tex);
	FragColor = vec4(result, 1.0f);
}
