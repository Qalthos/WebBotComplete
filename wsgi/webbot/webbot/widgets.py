import tw2.forms as twf

class RoboForm(twf.TableForm):
    pass

class GameForm(twf.TableForm):
    pass

class UploadForm(twf.TableForm):
    file = twf.FileField()
    name = twf.TextField()
    userid = twf.HiddenField()
