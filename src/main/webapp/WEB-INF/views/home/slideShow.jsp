<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/newSlide.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>

<body>
	<div id="homeDiv" class="slideshow-container">

		<div class="mySlides fades">
			<div class="numbertexts">1 / 3</div>
			<img src="${pageContext.servletContext.contextPath }/images/img_nature_wide.jpg" style="width: 100%">			
			<div class="texts">Caption Text</div>
		</div>

		<div class="mySlides fades">
			<div class="numbertexts">2 / 3</div>
			<img src="${pageContext.servletContext.contextPath }/images/img_fjords_wide.jpg" style="width: 100%">
			<div class="texts">Caption Two</div>
		</div>

		<div class="mySlides fades">
			<div class="numbertexts">3 / 3</div>
			<img src="${pageContext.servletContext.contextPath }/images/img_mountains_wide.jpg" style="width: 100%">
			<div class="texts">Caption Three</div>
		</div>

		<a class="prevs" onclick="plusSlides(-1)">&#10094;</a> <a class="nexts"
			onclick="plusSlides(1)">&#10095;</a>

	
	<br>

	<div style="text-align: center">
		<span class="dots" onclick="currentSlide(1)"></span> <span class="dots"
			onclick="currentSlide(2)"></span> <span class="dots"
			onclick="currentSlide(3)"></span>
	</div>
	</div>


	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dots");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
	</script>
</body>
</html>