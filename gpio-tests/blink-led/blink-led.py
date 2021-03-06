#blink-led.py

# import the necessary libraries
import RPi.GPIO as GPIO
import time

# SET THESE TO THE DESIRED VALUES
bcm_pin_num = 23
sleep_time = 1

# configure the GPIO pins
GPIO.setmode(GPIO.BCM)
GPIO.setup(bcm_pin_num, GPIO.OUT)

# blink the LED on and off repeatedly
try:
    for i in range(3):
        GPIO.output(bcm_pin_num, GPIO.HIGH)
        time.sleep(sleep_time)
        GPIO.output(bcm_pin_num, GPIO.LOW)
        time.sleep(sleep_time)
finally:
    # turn off LED and clean up pins when done
    GPIO.output(bcm_pin_num, GPIO.LOW)
    GPIO.cleanup()
