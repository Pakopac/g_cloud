for entry in *
do
  if [[ -f $entry ]]; then
    if [[ -s $entry ]]; then
      echo $(wc -l -w $entry)
    fi
  fi
done


