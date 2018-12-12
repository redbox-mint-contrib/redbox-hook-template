#! /bin/bash
npm pack
fileName=$(ls *.tgz)
mkdir tmp
mkdir dist
echo "Extracting npm made tarball to tmp dir so we can remove the internal package dir"
tar xvfz $fileName -C tmp/
rm -f $fileName
cd tmp/package
echo "Repackaging tarball without package directory"
tar cvfz ../../dist/$fileName .
cd ../../
rm -Rf tmp



