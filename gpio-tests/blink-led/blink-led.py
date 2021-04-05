#blink-led.py

# import the necessary libraries
import RPi.GPIO as GPIO
import time

# SET THESE TO THE DESIRED VALUES
bcm_pin_num1 = 21
bcm_pin_num2 = 20
bcm_pin_num3 = 26
bcm_pin_num4 = 16
bcm_pin_num5 = 19
bcm_pin_num6 = 13
bcm_pin_num7 = 12
pins = [bcm_pin_num1, bcm_pin_num2, bcm_pin_num3, bcm_pin_num4, bcm_pin_num5, bcm_pin_num6, bcm_pin_num7]

sleep_time = 0.5

# configure the GPIO pins
GPIO.setmode(GPIO.BCM)
for pin in pins:
    GPIO.setup(pin, GPIO.OUT)

# blink the LEDs on and off a few times
try:
    for i in range(3):
        for pin in pins:
            GPIO.output(pin, GPIO.HIGH)
            time.sleep(sleep_time)
            GPIO.output(pin, GPIO.LOW)
finally:
    # turn off LEDs and clean up pins when done
    for pin in pins:
        GPIO.output(pin, GPIO.LOW)

    GPIO.cleanup()
