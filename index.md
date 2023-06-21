---
vim: ts=3
---

{% include_relative scripts-local.html %}
{% include_relative styles-local.html %}

<div id="browser" style="display: inline-block">
	<b>size</b>:
	<select id="image-size" onchange="displayList()" style="inline-block; margin-right:20px;">
		<option value="100">100%</option>
		<option value="90">90%</option>
		<option value="80">80%</option>
		<option value="70">70%</option>
		<option value="60">60%</option>
		<option value="50">50%</option>
		<option value="40">40%</option>
		<option value="30" selected>30%</option>
		<option value="20">20%</option>
		<option value="10">10%</option>
	</select>

	<div style="display:inline-block">
		<b>extensions</b>:
		<input oninput="displayList()" id="horizontal" placeholder="horiz." style="width:40px;">
		<input oninput="displayList()" id="vertical" placeholder="vert." style="width:40px;">
	</div>

	<div class="button" style="display:inline-block; width:75px; margin-left:10px;" onclick="showAllNeumeLists(event)">Show&nbsp;all</div>

	
	

</div>


<div id="results"></div>



