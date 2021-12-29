#ifndef COMPONENT_H_
#define COMPONENT_H_
static unsigned long int id_gen = 0;

class Component
{
public:
	Component() :
		uid(id_gen++)
	{}
public:
	const unsigned long int uid;
};
#endif
