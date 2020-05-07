<html>
<head>
	<meta charset="utf-8">
	<link href="https://fonts.googleapis.com/css?family=Alef|Open+Sans" rel="stylesheet">
	<!-- Mitzvos -->
	<script type="text/template" id="mitzvos-template-he">
		<div class="hebrew">
			&rlm;<b><%- count %></b><br>
			<b><%- mitzvahName %></b><br>
			<%= idStringHe %><br>
		</div>
	</script>
	<script type="text/template" id="mitzvos-template-en">
		<div class="english">
			<b><%- count %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%= idStringEn %><br>
		</div>
	</script>
	<script type="text/template" id="mitzvos-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- count %></b><br>
			<b><%- mitzvahName %></b><br>
			<%= idStringLongHe %><br>
		</div>
	</script>
	<script type="text/template" id="mitzvos-selected-template-en">
		<div class="english">
			<b><%- count %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%= idStringLongEn %><br>
		</div>
	</script>

	<!-- Rambam -->
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
	<script type="text/template" id="rambam-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- verseText %> (<%- bookName %> <%- chapter %>, <%- verse %>)<br><br>
			<%- mitzvahTypeHe %>, <%- punishmentHe %>, <%- whoAppliesHe %><br><br>
			<div class="originalText"><%- originalText %></div><!-- REMOVE -->
		</div>
	</script>
	<script type="text/template" id="rambam-selected-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- verseTextEn %> (<%- bookNameEn %> <%- chapter %>:<%- verse %>)<br><br>
			<%- mitzvahTypeEn %>, <%- punishmentEn %>, <%- whoAppliesEn %>
		</div>
	</script>

	<!-- Ramban -->
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
	<script type="text/template" id="ramban-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %><%- shihchaNumberHe %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- verseText %> (<%- bookName %> <%- chapter %>, <%- verse %>)<br><br>
			<%- originalText %>
		</div>
	</script>
	<script type="text/template" id="ramban-selected-template-en">
		<div class="english">
			<b><%- mitzvahNumber %><%- shihchaNumberEn %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- verseTextEn %> (<%- bookNameEn %> <%- chapter %>:<%- verse %>)
		</div>
	</script>

	<!-- Chinuch -->
	<script type="text/template" id="chinuch-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- bookName %> <%- chapter %>, <%- verse %><br>
		</div>
	</script>
	<script type="text/template" id="chinuch-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- bookNameEn %> <%- chapter %>:<%- verse %><br>
		</div>
	</script>
	<script type="text/template" id="chinuch-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- verseText %> (<%- bookName %> <%- chapter %>, <%- verse %>)
			<p><%- description %></p>
			<p><%- shoresh %></p>
			<p><%- dinim %></p>
			<p><%- whoWhereWhenApplies %></p>
		</div>
	</script>
	<script type="text/template" id="chinuch-selected-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- verseTextEn %> (<%- bookNameEn %> <%- chapter %>:<%- verse %>)
		</div>
	</script>

	<!-- Semag -->
	<script type="text/template" id="semag-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- bookName %> <%- chapter %>, <%- verse %><br>
		</div>
	</script>
	<script type="text/template" id="semag-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- bookNameEn %> <%- chapter %>:<%- verse %><br>
		</div>
	</script>
	<script type="text/template" id="semag-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahName %></b><br>
			<%- verseText %> (<%- bookName %> <%- chapter %>, <%- verse %>)
		</div>
	</script>
	<script type="text/template" id="semag-selected-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahNameEn %></b><br>
			<%- verseTextEn %> (<%- bookNameEn %> <%- chapter %>:<%- verse %>)
		</div>
	</script>

	<!-- Bahag -->
	<script type="text/template" id="bahag-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahTitle %></b><br>
			<%- mitzvahName %><br>
		</div>
	</script>
	<script type="text/template" id="bahag-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahTitle %></b><br>
			<%- mitzvahNameEn %><br>
		</div>
	</script>
	<script type="text/template" id="bahag-selected-template-he">
		<div class="hebrew">
			&rlm;<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahTitle %></b><br>
			<%- mitzvahName %><br>
			<p><%- enNote %></p>
		</div>
	</script>
	<script type="text/template" id="bahag-selected-template-en">
		<div class="english">
			<b><%- mitzvahNumber %></b><br>
			<b><%- mitzvahTitle %></b><br>
			<%- mitzvahNameEn %><br>
			<p><%- enNote %></p>
		</div>
	</script>

	<!-- Compare -->
	<script type="text/template" id="compare-template-he">
		<div class="hebrew">
			&rlm;<b><%- count %>) <%- mitzvahName %></b> (#<%- mitzvahNumber %>)<br>
		</div>
	</script>
	<script type="text/template" id="compare-template-en">
		<div class="english">
			<b><%- count %>) <%- mitzvahNameEn %></b> (#<%- mitzvahNumber %>)<br>
		</div>
	</script>

	<base href="/">
	<!--<script language="javascript" type="text/javascript" src="lib/jquery-3.0.0.min.js"></script>-->
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
	<div id="moneiMitzvos">
		<ul id="moneiMitzvosList" dir="rtl" class="hebrew"></ul>
	</div>
	<div id="container" dir="rtl">
		<ul id="mitzvos"></ul>
	</div>
	<div id="compare" dir="rtl">
		<div id="leftTitle" class="hebrew">
			<b>רבמ"ם</b>
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