<h1>Here is inserting </h1>

<script>
	function addRating(restaurantId, ratingValue) {
		var xhttp = new XMLHttpRequest();

		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {

				showRestaurantData('getRatingData.php');

				if (this.responseText != "success") {
					alert(this.responseText);
				}
			}
		};

		xhttp.open("POST", "insertRating.php", true);
		xhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		var parameters = "index=" + ratingValue + "&restaurant_id="
				+ restaurantId;
		xhttp.send(parameters);
	}
</script>