// Inititalisierung für Gauge.js

jQuery(function($) {
	var defaults = {
	  lines: 12, // The number of lines to draw
	  angle: 0.15, // The length of each line
	  lineWidth: 0.44, // The line thickness
	  pointer: {
	    length: 0.9, // The radius of the inner circle
	    strokeWidth: 0.035, // The rotation offset
	    color: '#000000' // Fill color
	  },
	  limitMax: 'false',   // If true, the pointer will not go past the end of the gauge
	
	  colorStart: '#6FADCF',   // Colors
	  colorStop: '#8FC0DA',    // just experiment with them
	  strokeColor: '#E0E0E0',   // to see which ones work best for you
  	  generateGradient: true
	};
	
	function init($gauge, opts) {
		var gauge = new Gauge($gauge).setOptions(opts);
	
	}

$(".gauge").livequery(function() {
    var $this = $(this), data = $this.data();
    var options = $.extend({}, defaults, $this.metadata());
    //alert(options.lines);
    
    var gauge = new Gauge(this).setOptions(options);
    gauge.maxValue = 3000;
    gauge.set(1250);
    
    //$this.remove();
  });
  
  
});
