<%inherit file="local:templates.master"/>
<%def name="title()">
	Upload your robot code here
</%def>

<script>
	$(':input:hidden').value(data['userid'])
</script>

<div id="info">
<p>
Upload your robots code here
</p>
<form action="upload_code" enctype="multipart/form-data" method="POST">
<input type="file" name="code"/>
<input type="text" name="name"/>
<input type="hidden" name="user"/>
<br />
<input type="submit" name="submit"/>
</form>

</div>
<%def name="sidebar_bottom()"></%def>

