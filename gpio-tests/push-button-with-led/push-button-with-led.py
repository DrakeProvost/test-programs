# push-button-with-led.py

import RPi.GPIO as GPIO
import time

# SET THESE TO THE DESIRED VALUES (pin numbers in BCM)
led_pin = 18
button_pin = 23

# configure the GPIO pins
GPIO.setmode(GPIO.BCM)
GPIO.setup(led_pin, GPIO.OUT)
GPIO.setup(button_pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

# turn the LED on while the button is held
try:
    while True:
        if GPIO.input(button_pin) == GPIO.HIGH:
            GPIO.output(led_pin, GPIO.HIGH)
        else:
            GPIO.output(led_pin, GPIO.LOW)
        time.sleep(0.1)     # to limit CPU usage
finally:
    # turn off LED and clean up pins when done
    GPIO.output(led_pin, GPIO.LOW)
    GPIO.cleanup()
