#!/bin/bash

CHILLTIME=1 # Minutes between bong hits
BONGTIME=1  # Minutes during bong hits


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

    chillCount
    bongCount
  done
}

main
