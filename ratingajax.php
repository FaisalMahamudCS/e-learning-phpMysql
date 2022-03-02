<?php
include "getRatingData.php";
?>

<body onload="showRestaurantData('getRatingData.php')">
    <div class="container">
        <h2>Star Rating System using PHP and Javascript</h2>
        <span id="restaurant_list"></span>
    </div>
</body>

<script type="text/javascript">
	function showRestaurantData(url) {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("restaurant_list").innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", url, true);
		xhttp.send();

	}//endFunction
</script>