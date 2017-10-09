#!/bin/sh

cd base
./build.sh

cd ../name_node
./build.sh

cd ../resource_manager
./build.sh

cd ../data_node
./build.sh

