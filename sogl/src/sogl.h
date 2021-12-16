#ifndef SOGL_H_
#define SOGL_H_

#include <memory>
#include <vector>
#include <string>

namespace SOGL
{

class ITransform
{
public:
	virtual void set_pos(float x, float y, float z) = 0;
	virtual void set_rot(float x, float y, float z) = 0;
	virtual void set_scale(float x, float y, float z) = 0;
};

class IModel
{
public:
	virtual ~IModel() {}
	virtual ITransform *get_transform() = 0;
};

class IApplication
{
public:
	virtual ~IApplication() {};
	virtual bool init(int width, int height) = 0;
	virtual void fini() = 0;
	virtual bool draw() = 0;
	virtual std::shared_ptr<IModel> add_model(const std::vector<std::string> &shaders, const std::vector<std::string> &textures) = 0;
};

std::shared_ptr<IApplication> instance();

};

#endif
