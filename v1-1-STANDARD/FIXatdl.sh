#!/bin/bash

echo Compilation started...
# Script is expected to start running in the folder where it is located (together with the source files)
SOURCE="$PWD"
# There is only one disclaimer and style docx file for all FIX Technical Standards and it is stored with the FIX Session Layer
# Repository has local copies with the specific names and dates of the standard
DISCLAIMER="FIXDisclaimerTechStd.md"
STYLE="FIX_TechStd_Style_MASTER.docx"
TARGET="$SOURCE/target"
YAML="$SOURCE/FIXatdl.yaml"
FILES="FIXatdl.md"
WPFOLDER="/wp-content/uploads/2020/12/"

# Create FIX document version with disclaimer
pandoc "$DISCLAIMER" $FILES -o "$TARGET/docx/FIXatdl_V1.1_with_Errata.docx" --reference-doc="$STYLE" --metadata-file="$YAML" --toc --toc-depth=4
echo FIXatdl document version created for FIX

# Create base online version without disclaimer
pandoc $FILES -o "$TARGET/debug/FIXatdlONLINE.html" -s --metadata-file="$YAML" --toc --toc-depth=2

# Remove title as it is redundant to page header
sed -i '.bak1' '/<h1 class="title">/d' "$TARGET/debug/FIXatdlONLINE.html"

# Add header for table of contents
sed -i '.bak2' '/<nav id="TOC" role="doc-toc">/i\
<h1 id="table-of-contents">Table of Contents<\/h1>\
' "$TARGET/debug/FIXatdlONLINE.html"

# Create separate online versions for production and test website by including appropriate link prefixes
sed 's,img src="media/,img src="https://www.fixtrading.org'$WPFOLDER',g' "$TARGET/debug/FIXatdlONLINE.html" > "$TARGET/html/FIXatdlONLINE_PROD.html"
sed s/www.fixtrading.org/www.technical-fixprotocol.org/ "$TARGET/html/FIXatdlONLINE_PROD.html" > "$TARGET/html/FIXatdlONLINE_TEST.html"
echo FIXatdl ONLINE version created for PROD and TEST

echo Compilation ended!
