import tw2.forms as twf

class RoboForm(twf.TableForm):
    user_bots = twf.RadioButtonList()
    example_bots = twf.CheckBoxList()

class UploadForm(twf.TableForm):
    code = twf.FileField()
    name = twf.TextField()
    userid = twf.HiddenField()
