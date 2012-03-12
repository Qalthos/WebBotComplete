import tw2.forms as twf

class RoboForm(twf.TableForm):
    user_bots = twf.RadioButtonList()
    example_bots = twf.CheckBoxList()

    def __init__(self, user, **kw):
        super(RoboForm, self).__init__(**kw)
        self.user_bots.options = user
        self.example_bots.options = example

class GameForm(twf.TableForm):
    pass

class UploadForm(twf.TableForm):
    file = twf.FileField()
    name = twf.TextField()
    userid = twf.HiddenField()
