#!/bin/bash

# Indicate to Fiji where is the ilastik executable:
echo "run(\"Configure ilastik executable location\", \"executablefile=${CONDA_PREFIX}/bin/ilastik.py\");" > setexecutablefile.ijm
ImageJ --ij2 --headless --console -macro setexecutablefile.ijm
rm setexecutablefile.ijm
