#!/bin/sh

Examine () {
  if [ -f star.log ]; then  
    ANSWER=`grep $1 star.log | awk '{print $2}'`
    echo ${ANSWER}
    if [ -z "${ANSWER}" ]; then
      if [ $1 = 'NNODE' ]; then
        ANSWER=1
      fi
      ANSWER='UNKNOWN'
    fi
  fi
};

Examine CASE
if [ "$ANSWER" = UNKNOWN ]; then
  ANSWER=`ls -1t *.par 2> /dev/null | head -1 | cut -f1 -d"."`
fi
$ECHO "Casename:                        =>      $ANSWER" 
CASE=${ANSWER}
