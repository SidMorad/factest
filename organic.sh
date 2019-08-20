#!/bin/sh
#
# Organic build shell script
#
STIME="$(date +%s)"
echo "$STIME"
echo ""

TSDIR=src
TTDIR=target
MREPO=~/.m2/repository
FSUIT=../projectX
CPATH="
$MREPO/junit/junit/4.12/junit-4.12.jar:\
$FSUIT:\
$TTDIR
"

# Executing FactRunner main class
#javac -classpath $CPATH $TSDIR/organic/fact/FactSuite.java -d $PWD/$TTDIR
javac -classpath $CPATH $TSDIR/organic/fact/FactRunner.java -d $PWD/$TTDIR
java -classpath $CPATH organic.fact.FactRunner

ETIME="$(date +%s)"
echo "$ETIME"
echo "$(expr $ETIME - $STIME).- Stook"
