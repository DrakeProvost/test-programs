import kivy

from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.gridlayout import GridLayout
from kivy.uix.button import Button
from kivy.properties import NumericProperty
from kivy.core.window import Window

Window.fullscreen = 'auto'

class CustomButton(Button):
    btn_id = NumericProperty()

    def on_touch_down(self, touch):
        print("CustomButton " + str(self.btn_id) + " on_touch_down")
        if self.collide_point(*touch.pos):
            print("CustomButton " + str(self.btn_id) + " collide")
            #return True
        #else:
        return super(CustomButton, self).on_touch_down(touch)


class MyLayout(GridLayout):
    my_layout_id = NumericProperty()

    def on_touch_down(self, touch):
        print("MyLayout " + str(self.my_layout_id) + " on_touch_down")
        if self.collide_point(*touch.pos):
            print("MyLayout " + str(self.my_layout_id) + " collide")
            #return True
        #else:
        return super(MyLayout, self).on_touch_down(touch)


class RootWidget(GridLayout):
    
    def on_touch_down(self, touch):
        print("\nRootWidget on_touch_down")
        if self.collide_point(*touch.pos):
            print("RootWidget collide")
#            return True
        #else:
        return super(RootWidget, self).on_touch_down(touch)


class EventDispatchingApp(App):

    def build(self):
        self.root = RootWidget()
        return self.root

if __name__ == '__main__':
    EventDispatchingApp().run()
