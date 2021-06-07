#!/bin/bash

AWSW_OUTOUT=$(aws2-wrap --profile ${ORGANIZATION_NAME}-$1 ${@:2}  2>&1)

if [[ $? -ne 0 ]] && [[ $AWSW_OUTOUT == "Please login with "* ]]; then
    aws sso login --profile=polar-security-$1
    AWSW_OUTOUT=$(aws2-wrap --profile ${ORGANIZATION_NAME}-$1 ${@:2}  2>&1)
fi

echo "${AWSW_OUTOUT}"