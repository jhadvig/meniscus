// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(window).load(function() {
})

$(window).ready(function(){
	$("#owl-demo").owlCarousel({   
		slideSpeed : 300,
		paginationSpeed : 400,
		autoPlay : true,
		singleItem:true
	});
	$("#owl-demo2").owlCarousel({
		slideSpeed : 300,
		autoPlay : true,
		navigation : true,
		pagination : true,
		singleItem:true
	});

	$(".fancybox").fancybox();

	var endDate = "April 24, 2015 16:00:00";

  	$('.countdown.styled').countdown({
        date: endDate,
        render: function(data) {
        	$(this.el).html("<div><span></span>" + this.leadingZeros(data.days, 2) + "</div><div><span> : </span>" + this.leadingZeros(data.hours, 2) + "</div><div><span> : </span>" + this.leadingZeros(data.min, 2) + "</div><div><span> : </span>" + this.leadingZeros(data.sec, 2) + "</div>");
        }
   	});
});
