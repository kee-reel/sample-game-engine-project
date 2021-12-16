#include "shader.h"

class Texture
{
public:
	Texture(const std::vector<std::string> &paths);
	~Texture();
	void reload();
	void use(std::shared_ptr<Shader> shader);

private:
	void reset();
	void load();

private:
	std::vector<std::string> m_paths;
	bool m_ok;
	std::vector<GLuint> m_textures;
};

