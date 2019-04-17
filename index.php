<html>
<head>
	<meta charset="utf-8">
	<link href="https://fonts.googleapis.com/css?family=Alef|Open+Sans" rel="stylesheet">
	<script type="text/template" id="rambam-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- bookName %> <%- chapter %>, <%- verse %><br>
			<%- mitzvahTypeHe %>, <%- punishmentHe %>, <%- whoAppliesHe %>
		</div>
	</script>
	<script type="text/template" id="rambam-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- bookNameEn %> <%- chapter %>:<%- verse %><br>
			<%- mitzvahTypeEn %>, <%- punishmentEn %>, <%- whoAppliesEn %>
		</div>
	</script>

	<script type="text/template" id="ramban-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %><%- shihchaNumberHe %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- bookName %> <%- chapter %>, <%- verse %><br>
		</div>
	</script>
	<script type="text/template" id="ramban-template-en">
		<div class="english">
			<b><%- mitzvahNumber %><%- shihchaNumberEn %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- bookNameEn %> <%- chapter %>:<%- verse %><br>
		</div>
	</script>

	<script type="text/template" id="compare-template-he">
		<div class="hebrew">
			&rlm;<b><%- count %>) <%- mitzvahName %></b><br>
		</div>
	</script>
	<script type="text/template" id="compare-template-en">
		<div class="english">
			<b><%- count %>) <%- mitzvahNameEn %></b><br>
		</div>
	</script>

	<script language="javascript" type="text/javascript" src="lib/jquery-3.0.0.min.js"></script>
	<script
	  src="https://code.jquery.com/jquery-3.2.1.min.js"
	  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	  crossorigin="anonymous"></script>
	<script language="javascript" type="text/javascript" src="dist/bundle.js"></script>

</head>
<body>
	<div id="language">
		<button id="language-btn" type="button">א</button>
	</div>
	<div id="container" dir="rtl">
		<ul id="mitzvos"></ul>
	</div>
	<div id="compare" dir="rtl">
		<div id="leftTitle" class="hebrew">
			<b>רמב"ם</b>
		</div>
		<div id="middleTitle" class="hebrew">
			<b>שניהם</b>
		</div>
		<div id="rightTitle" class="hebrew">
			<b>רמב"ן</b>
		</div>
		<div id="left">
			<ul id="leftMitzvos"></ul>
		</div>
		<div id="middle">
			<ul id="midMitzvos"></ul>
		</div>
		<div id="right">
			<ul id="rightMitzvos"></ul>
		</div>
	</div>
</body>
</html>