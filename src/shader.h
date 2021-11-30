class Shader
{
public:
	Shader(const std::vector<std::string> &paths);
	~Shader();
	void use();
	void reload();

private:
	void reset();
	void load();
	static void delete_shaders(std::vector<GLuint> &shaders);
	static bool check_status(GLuint object, GLuint status, const char *msg, const char *path=nullptr);

private:
	std::vector<std::string> m_paths;
	GLuint m_program;
	bool m_ok;
};
