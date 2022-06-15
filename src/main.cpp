#include <sge.h>
#include <iostream>
#include <cmath>

int main( void )
{
	return sge::instance()->init(500, 500, "SGE", "res/main.lua");
}

