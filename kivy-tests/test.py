import kivy

from kivy.app import App
from kivy.core.image import Image

class DisplayImage(Image):
    def __init__(self, arg, **kwargs):
        super(DisplayImage, self, arg).__init__(arg, **kwargs)

        self.cam = PiCamera()
        self.cam.resolution = (1280, 720)
        self.cam.framerate = 30
        self.cam.awb_mode = "auto"
        self.raw = PiRGBArray(self.cam, size=(1280, 720))

        Clock.schedule_interval(self.update, 1.0 / 30)

    def update(self, dt):
        self.cam.capture(self.raw, format='bgr', resize=(1400, 900))
        frame = self.raw.array

        buf = cv2.resize(frame, (1400, 900), interpolation=cv2.INTER_LINEAR).tostring()

        image_texture = Texture.create(size=(frame.shape[1], frame.shape[0]), colorfmt='rgb')
        image_texture.blit_buffer(buf, colorfmt='bgr', bufferfmt='ubyte')

        self.texture = image_texture

class MyApp(App):
    def build(self):
        return DisplayImage()

try:
    MyApp().run()
except Exception as e:
    print(e)
