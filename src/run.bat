@ECHO OFF

ECHO --------
ECHO Creating ..\build directory
mkdir ..\build

ECHO Compiling %1.cpp to ..\build\%1
clang++ -Wall -Wextra -Werror -Wshadow -Weffc++ -Wnon-virtual-dtor -pedantic -std=c++17 %1.cpp -o ..\build\%1

ECHO Running ..\build\%1
ECHO --------
..\build\%1
