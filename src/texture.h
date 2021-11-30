class Texture
{
public:
	Texture(const std::string &path);
	~Texture();
	void reload();
	void use();

private:
	void reset();
	void load();

private:
	std::string m_path;
	bool m_ok;
	GLuint m_texture;
};

