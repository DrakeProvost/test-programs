# push-button-with-led.py

import RPi.GPIO as GPIO
import time

# SET THESE TO THE DESIRED VALUES (pin numbers in BCM)
transistor_pin = 18
sleep_time = 1  #seconds

# configure the GPIO pins
GPIO.setmode(GPIO.BCM)
GPIO.setup(transistor_pin, GPIO.OUT)

# turn the LED on and off in a loop
try:
    while True:
        GPIO.output(transistor_pin, GPIO.HIGH)
        time.sleep(sleep_time)
        GPIO.output(transistor_pin, GPIO.LOW)
        time.sleep(sleep_time)
finally:
    # turn off LED and clean up pins when done
    GPIO.output(transistor_pin, GPIO.LOW)
    GPIO.cleanup()
