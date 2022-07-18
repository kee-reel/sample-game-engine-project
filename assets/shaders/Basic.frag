#version 330 core
out vec4 FragColor;

in vec3 pos;
in vec3 norm;
in vec2 tex;

struct Material {
    sampler2D diffuse;
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
uniform Light lights[MAX_LIGHTS_COUNT];

uniform vec3 viewPosition;

vec3 calc_light(Light light, vec3 lightDir, vec3 norm_)
{
    float diff = max(dot(norm_, lightDir), 0.);

	vec3 ambient = light.ambient * texture(material.diffuse, tex).xyz;

	vec3 diffuse = light.diffuse * diff * texture(material.diffuse, tex).xyz;

    vec3 light_color = diffuse;

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
    float diff = 0;
    vec3 norm_ = normalize(norm);
    vec3 lightDir;
    for(int i = 0; i < MAX_LIGHTS_COUNT; i++)
    {
        lightDir = lights[i].position.w == 0.0f ? 
            normalize(lights[i].position.xyz) : normalize(lights[i].position.xyz - pos);
        diff = max(dot(norm_, lightDir), 0.);
        max_diff = max(diff, max_diff);
	    result += calc_light(lights[i], lightDir, norm_);
    }

	FragColor = vec4(result, 1.0f);
}
