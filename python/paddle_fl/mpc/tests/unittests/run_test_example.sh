#!/bin/bash

# set redis server ip and port for test
export TEST_REDIS_IP="test_redis_server_ip"
export TEST_REDIS_PORT="test_redis_port"

# unittest command
PYTHON_TEST="python -m unittest"

# add the modules to test
TEST_MODULES=("test_datautils_aby3"
"test_model_encryption"
"test_datautils_align"
"test_op_add"
"test_op_sub"
"test_op_mul"
"test_op_square"
"test_op_sum"
"test_op_mean"
"test_op_square_error_cost"
"test_op_fc"
"test_op_relu"
"test_op_compare"
)

# run unittest
for MODULE in ${TEST_MODULES[@]}
do
    $PYTHON_TEST $MODULE
done
