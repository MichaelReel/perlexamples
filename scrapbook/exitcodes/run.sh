#/bin/sh

ERR=$(mktemp)

SCRIPT=./exit1.plx
OUTPUT=$(perl $SCRIPT 2>"$ERR")
echo $SCRIPT returned $? with output \'$OUTPUT\' and error \'$(cat "$ERR")\'

SCRIPT=./exit0.plx
OUTPUT=$(perl $SCRIPT 2>"$ERR")
echo $SCRIPT returned $? with output \'$OUTPUT\' and error \'$(cat "$ERR")\'

SCRIPT=./die.plx
OUTPUT=$(perl $SCRIPT 2>"$ERR")
echo $SCRIPT returned $? with output \'$OUTPUT\' and error \'$(cat "$ERR")\'

rm "$ERR"