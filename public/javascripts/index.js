jQuery(document).ready(function() {
	jQuery("a").mouseover(function() {
		jQuery(this).addClass("hover");		
	}).mouseout(function(){
		jQuery(this).removeClass("hover");		
	})
})