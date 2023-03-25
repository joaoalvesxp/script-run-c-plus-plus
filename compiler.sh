#!/bin/bash

FILE_NAME=$1
OUTPUT_FILE_NAME=$(sed 's/.cpp/.out/g' <<< "${FILE_NAME}")

g++ -Wall ${FILE_NAME} -o ${OUTPUT_FILE_NAME}
./${OUTPUT_FILE_NAME}