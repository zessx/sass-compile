#!/bin/bash
# sass-compile.sh: a shell script to easily compile sass with a few default options
# $1: input
# $2: output
# $3: -d | --debug (optional)
sass-compile() {
  INPUT=$1
  OUTPUT=$2

  OPTIONS="--update --stop-on-error --no-cache --sourcemap=none"
  if [[ -n $3 ]] 
  then
    if [[ $3 == "-d" ]] || [[ $3 == "--debug" ]]
    then
      OPTIONS="${OPTIONS} --trace --line-numbers"
    fi
  fi

  sass ${OPTIONS} ${INPUT}:${OUTPUT}
  sass ${OPTIONS} --style compressed ${INPUT}:`echo ${OUTPUT} | sed 's/\.css$/.min.css/'`
}
