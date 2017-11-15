#!/bin/sh

cd base
./build.sh

cd ../name_node
./build.sh

cd ../secondary_name_node/
./build.sh

cd ../resource_manager
./build.sh

cd ../node_manager
./build.sh

cd ../data_node
./build.sh

cd ../job_history
./build.sh

cd ../web_app_proxy
./build.sh
