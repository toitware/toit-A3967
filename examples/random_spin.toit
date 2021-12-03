import gpio
import a3967 show *

stp_pin := gpio.Pin.out 15
dir_pin := gpio.Pin.out 16
ms1_pin := gpio.Pin.out 17
ms2_pin := gpio.Pin.out 18
en_pin := gpio.Pin.out 19

main:
  driver := A3967 --stp_pin=stp_pin --dir_pin=dir_pin --ms1_pin=ms1_pin --ms2_pin=ms2_pin --en_pin=en_pin
  driver.set_direction A3967.COUNTER_CLOCKWISE
  task::
    while true:
      dur := Duration --s=(random 3 13)
      driver.rotate --duration=dur
      //driver.reset
      dir := random 0 2
      print "direction: $(dir)"
      driver.set_direction dir
      step_res := random 0 4
      print "step res: $(step_res)"
      driver.set_step_resolution step_res
