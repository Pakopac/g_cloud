echo "Enter a number less than 1000"
re='^[0-9]+$'
read number
if [[ ${number} =~ $re ]] ; then
  if ((${#number} == 1)); then
    echo "Lenght: 1"
  elif ((${#number} == 2)); then
    echo "Lenght: 2"
  elif ((${#number} == 3)); then
    echo "Lenght: 3"
  else
    echo "Wrong number"
  fi
else
  echo "It's not a number"
fi
