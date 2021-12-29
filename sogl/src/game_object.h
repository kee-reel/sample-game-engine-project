#include "includes.h"

#include "transform.h"
#include "component.h"
#include "sogl.h"

class GameObject : public Component, public SOGL::IGameObject
{
public:
	virtual ~GameObject() {}
	SOGL::ITransform &get_transform() { return transform; }

public:
	Transform transform;
};
