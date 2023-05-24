# the name of the target operating system
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv32)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER $ENV{RISCV32_TOOLCHAIN}/bin/riscv32-unknown-elf-gcc -march=rv32imc -save-temps=obj)
set(CMAKE_CXX_COMPILER $ENV{RISCV32_TOOLCHAIN}/bin/riscv32-unknown-elf-g++ -march=rv32imc -save-temps=obj)

# where is the target environment located
set(CMAKE_FIND_ROOT_PATH $ENV{RISCV32_TOOLCHAIN}/riscv32-unknown-elf)

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Running something like this should work:
# cmake .. -G Ninja -DCMAKE_TOOLCHAIN_FILE=../TC-powdr.cmake -DHUNTER_ENABLED=off -DINTX_TESTING=off -DRISCV32_TOOLCHAIN=/home/xxx/riscv-gcc
