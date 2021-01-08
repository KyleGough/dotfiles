# Generates a random number between a and b inclusive.
rng() {
  RANDOM=$(date +%s%N | cut -b10-19)
  if [[ $# -eq 1 ]]; then
    echo $(( $RANDOM % $1 ))
  elif [[ $# -eq 2 ]]; then
    echo $(( $RANDOM % $2 + $1 ))
  else
    echo "ERROR: Incorrect number of parameters"
  fi
}

