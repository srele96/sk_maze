@ECHO OFF

SET out_dir=..\build
SET out_file=%out_dir%\%1
SET in_file=%1.cpp

ECHO --------
ECHO Creating %out_dir% directory
MKDIR %out_dir%

ECHO Compiling %in_file% to %out_file%
clang++ -Wall -Wextra -Werror -Wshadow -Weffc++ -Wnon-virtual-dtor -pedantic -std=c++17 %in_file% -o %out_file%

ECHO Running %out_file%
ECHO --------
%out_file%
