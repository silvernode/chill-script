#!/bin/bash

CHILLTIME=1 # Minutes between bong hits
BONGTIME=1  # Minutes during bong hits
READYTIME=60

chillCount(){
  clear
  secs=$(( ${CHILLTIME} * 60))
  echo "(-_-)"
  echo "Seconds until next bong hit"
  while [ $secs -gt 0 ]; do

     echo -ne "$secs\033[0K\r"
     sleep 1
     : $((secs--))
  done

}

bongCount(){
  clear
  secs=$(( ${BONGTIME} * 60))
  echo "(-_-)"

  echo "Seconds until next chill period"
  while [ $secs -gt 0 ]; do

     echo -ne "$secs\033[0K\r"
     sleep 1
     : $((secs--))
  done

}

main(){
  clear
  while true;do

    notify-send "Chill out and relax. (^_^)"
    chillCount
    beep 1000000
    echo "next bong hit in ${READYTIME} seconds"
    sleep ${READYTIME}
    notify-send "Light the bong now!"
    bongCount
  done
}

main
