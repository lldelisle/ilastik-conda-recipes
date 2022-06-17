#! /bin/bash

# First copy the plugin in the good directory:
outdir=$PREFIX/share/plugins/
cp *.jar $outdir/

# Then make ilastik-meta executable:
sed -e 1's:import.*:#!/usr/bin/env python\n\n&:' "${PREFIX}/ilastik-meta/ilastik/ilastik.py" > "${PREFIX}/bin/ilastik.py"
chmod +x "${PREFIX}/bin/ilastik.py"
