#! /bin/bash

# Copy the plugin in the good directory:
outdir="$PREFIX/share/plugins/"
mkdir -p $outdir
cp *.jar $outdir/

# Replace ImageJ by a bash script:
mv "$PREFIX/bin/ImageJ" "$PREFIX/bin/ImageJ_before_set_exec_ilastik"
cp "${RECIPE_DIR}/ImageJ" "${PREFIX}/bin/ImageJ"
cp "${RECIPE_DIR}/IlastikSetter.java" "${PREFIX}/IlastikSetter.java"

chmod a+x "${PREFIX}/bin/ImageJ"
