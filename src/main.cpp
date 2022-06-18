#include <iostream>
#include <sge.h>

int main(int argc, char *argv[])
{
    if(argc < 2)
    {
        std::cout << "No project config provided in command line arguments" << std::endl;
        return 1;
    }
	return sge::init(argv[1]);
}

