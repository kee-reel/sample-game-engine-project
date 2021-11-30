#include <cstdlib>
#include <iostream>

#include "util.h"

void error_msg(const char *msg, const char *extra, const char *path)
{
	std::cerr << "ERROR: ";
	if(path)
		 std::cerr << "in file \"" << path << "\", ";
	std::cerr << msg;
	if(extra)
		std::cerr << ", extra info: " << *extra;
	std::cerr << std::endl;
}
