import kivy

from kivy.app import App
#from kivy.uix.camera import Camera
#import kivy.core.camera as CameraBase

class MyCamera(Camera):

    def __init__(self, **kwargs):
        super(MyCamera, self).__init__(**kwargs)
        cam = Camera(play=True)

class MyApp(App):

    def build(self):
        return MyCamera()
    
MyApp().run()
