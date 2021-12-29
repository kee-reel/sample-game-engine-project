#ifndef TEXTURE_H_
#define TEXTURE_H_

#include "shader.h"
#include "component.h"

class Texture : public Component
{
public:
	Texture(const std::string &path);
	~Texture();
	void reload();
	void use(int num, std::string name, std::shared_ptr<Shader> shader);

private:
	void reset();
	void load();

private:
	bool m_ok;
	std::string m_path;
	GLuint m_texture;
};
#endif
