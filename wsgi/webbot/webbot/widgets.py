import tw2.forms as twf


class UploadForm(twf.TableForm):
    code = twf.FileField()
    name = twf.TextField()
    userid = twf.HiddenField()
