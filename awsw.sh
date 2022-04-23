#!/bin/bash

aws2-wrap --profile ${ORGANIZATION_NAME}-$1 ${@:2}

#if [[ $? -ne 0 ]]; then
#    aws sso login --profile={ORGANIZATION_NAME}-$1
#    aws2-wrap --profile ${ORGANIZATION_NAME}-$1 ${@:2}
#fi
