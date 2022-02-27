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
    vec4 position;
  
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;

    float constant;
    float linear;
    float quadratic;
};

#define MAX_LIGHTS_COUNT 4
uniform uint lights_count;
uniform Light lights[MAX_LIGHTS_COUNT];

uniform vec3 viewPosition;

vec3 calc_light(Light light, vec3 lightDir, float diff, vec3 norm_)
{
	vec3 ambient = light.ambient * texture(material.diffuse, tex).xyz;

	vec3 diffuse = light.diffuse * diff * texture(material.diffuse, tex).xyz;

	vec3 reflectionDir = reflect(-lightDir, norm_);
	vec3 viewDir = normalize(viewPosition - pos);
	float spec = pow(max(dot(viewDir, reflectionDir), 0.0), material.shininess);
	vec3 specular = light.specular * spec * texture(material.specular, tex).xyz;

    vec3 light_color = ambient + diffuse + specular;

    if(light.constant != 0.0f)
    {
        float distance = length(light.position.xyz - pos);
        float attenuation = 1.0f / (light.constant + light.linear * distance + 
                        light.quadratic * (distance * distance));
        light_color *= attenuation;
    }
    return light_color;
}

void main()
{

    vec3 result = vec3(0.0f);
    float max_diff = 0;
    for(int i = 0; i < MAX_LIGHTS_COUNT; i++)
    {
        vec3 norm_ = normalize(norm);
        vec3 lightDir = lights[i].position.w == 0.0f ? 
            normalize(lights[i].position.xyz) : normalize(lights[i].position.xyz - pos);
        float diff = max(dot(norm_, lightDir), 0.);
        max_diff = max(diff, max_diff);
	    result += calc_light(lights[i], lightDir, diff, norm_);
    }

	vec3 emission_tex = texture(material.emission, tex).xyz;
	float emission = 1 - max_diff;
    result += emission * emission_tex;

	FragColor = vec4(result, 1.0f);
}
