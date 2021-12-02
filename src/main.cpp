
#include "application.h"

int main( void )
{
	if(!Application::instance().init() || !Application::instance().load_scene())
		return 0;
	while(Application::instance().draw());
	return 0;
}

