<html>
<head>
	<meta charset="utf-8">
	<link href="https://fonts.googleapis.com/css?family=Alef|Open+Sans" rel="stylesheet">
	<script type="text/template" id="mitzvah-template">
		<!--<div class="mitzvah">-->
			<b><%- mitzvahNumber %></b><br>
			<%- mitzvahName %><br>
			<%- name %> <%- chapter %>:<%- verse %>
		<!--</div>-->
	</script>
	<!--<script language="javascript" type="text/javascript" src="lib/jquery-3.0.0.min.js"></script>-->
	<script
	  src="https://code.jquery.com/jquery-3.2.1.min.js"
	  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	  crossorigin="anonymous"></script>
	<script language="javascript" type="text/javascript" src="dist/bundle.js"></script>

</head>
<body>
	<div id="container" dir="rtl">
		<ul id="mitzvos"></ul>
	</div>
</body>
</html>