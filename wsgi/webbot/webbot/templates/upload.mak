<%inherit file="local:templates.master"/>
<%def name="title()">
	Upload your robot code here
</%def>

<div id="info">
<p>
Upload your robots code here
</p>
${form.display() | n}

</div>
<%def name="sidebar_bottom()"></%def>

