import gpio
import a3967 show *

stp_pin := gpio.Pin.out 15
dir_pin := gpio.Pin.out 16
ms1_pin := gpio.Pin.out 17
ms2_pin := gpio.Pin.out 18
en_pin := gpio.Pin.out 19

main:
  driver := A3967 --stp_pin=stp_pin --dir_pin=dir_pin --ms1_pin=ms1_pin --ms2_pin=ms2_pin --en_pin=en_pin
  driver.reset
  driver.set_step_resolution A3967.EIGHT_STEP
  driver.rotate
