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
FSUIT="../projectX/target/classes:../projectX/target/test-classes:\
$MREPO/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:\
$MREPO/org/slf4j/slf4j-nop/1.6.2/slf4j-nop-1.6.2.jar:\
$MREPO/com/fasterxml/jackson/core/jackson-core/2.9.6/jackson-core-2.9.6.jar:\
$MREPO/com/fasterxml/jackson/core/jackson-annotations/2.9.0/jackson-annotations-2.9.0.jar:\
$MREPO/com/fasterxml/jackson/core/jackson-databind/2.9.6/jackson-databind-2.9.6.jar:\
$MREPO/org/springframework/spring-core/5.0.7.RELEASE/spring-core-5.0.7.RELEASE.jar"
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
