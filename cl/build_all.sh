#!/bin/bash

current_dir=$(pwd)

for dir in */; do
    if [[ "$dir" != "CMakeFiles/" ]]; then
        cd "$dir"
        # 如果路径有变化
	      find . -type f -name "CMakeLists.txt" -exec sed -i 's/\/usr\/local\/lib64/\/usr\/local\/lib/g' {} +
        mkdir -p build
        cd build
        cmake ..
        make
        cd ../..
    fi
done

cd "$current_dir"
