/*  Copyright (c) 2011 The mraid.org project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */
(function() {

	   var mraidview = window.mraidview = {};
	   var mraid = window.mraid = {};
	 
	   /****************************************************/
	   /********** PROPERTIES OF THE MRAID BRIDGE **********/
	   /****************************************************/
	 
	   /** Expand Properties */
	   var expandProperties = {
			   width:0,
			   height:0,
			   useCustomClose:false,
			   isModal:true,
			   lockOrientation:false,
			   useBackground:true,
			   backgroundColor:'#ffffff',
			   backgroundOpacity:1
	    };
	   
	   var defaultExpandProperties = {
			   width:"maximum screen width",
			   height:"maximum screen height",
			   useCustomClose:false,
			   isModal:true,
			   lockOrientation:false,
			   useBackground:true,
			   backgroundColor:'#ffffff',
			   backgroundOpacity:1
	   };
	   
   	/** Mraid Orientation Properties */
     var orientationProperties = {
       allowOrientationChange: true,
       forceOrientation: "none"
     };
	   
	   /** The set of listeners for MRAID Native Bridge Events */
	   var listeners = { };
	 
	     
	   /** A Queue of Calls to the Native SDK that still need execution */
	   var nativeCallQueue = [ ];
	 
	   /** Identifies if a native call is currently in progress */
	   var nativeCallInFlight = false;
	 
	   /** timer for identifying iframes */
	   var timer;
	   var totalTime;

	 
	 
	   /**********************************************/
	   /************* JAVA ENTRY POINTS **************/
	   /**********************************************/
	 
	   /**
	    * Called by the JAVA SDK when initialization is complete.
	    *
	    * @returns string, 'OK'
	    */
	   mraidview.fireReadyEvent = function() {
	      var handlers = listeners['ready'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]( );
	            
	         }
	      }
	 
	      return 'OK';
	   };
	 
	   
	   /**
	    * Called by the JAVA SDK when an asset has been fully cached.
	    *
	    * @returns string, 'OK'
	    */
	   mraidview.fireAssetReadyEvent = function( alias, URL ) {
	      var handlers = listeners['assetReady'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]( alias, URL );
	            
	         }
	      }
	 
	      return 'OK';
	   };
	 
	 
	   /**
	    * Called by the JAVA SDK when an asset has been removed from the
		* cache at the request of the creative.
	    *
	    * @returns string, 'OK'
	    */
	   mraidview.fireAssetRemovedEvent = function( alias ) {
	      var handlers = listeners['assetRemoved'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]( alias );
	         }
	      }
	      return 'OK';
	   };
	 
	 
	   /**
	    * Called by the JAVA SDK when an asset has been automatically
		* removed from the cache for reasons outside the control of the creative.
	    *
	    * @returns string, "OK"
	    */
	   mraidview.fireAssetRetiredEvent = function( alias ) {
	      var handlers = listeners['assetRetired'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]( alias );
	         }
	      }
	 
	      return 'OK';
	   };
	 
	 
	   /**
		* Called by the JAVA SDK when various state properties have changed.
	    *
	    * @returns string, "OK"
		*/
	   mraidview.fireChangeEvent = function( properties ) {
	      var handlers = listeners['change'];
	      
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
			    handlers[i]( properties );
			    
	         }
	      }
	 
	      return 'OK';
	   };
	 
	 
	   /**
	    * Called by the JAVA SDK when an error has occured.
	    *
	    * @returns string, "OK"
	    */
	   mraidview.fireErrorEvent = function( message, action ) {
	      var handlers = listeners['error'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]( message, action );
	         }
	      }
	 
	      return 'OK';
	   };
	 
	 
	   /**
	    * Called by the JAVA SDK when the user shakes the device.
	    *
	    * @returns string, 'OK'
	    */
	   mraidview.fireShakeEvent = function() {
	      var handlers = listeners['shake'];
	      if ( handlers != null ) {
	         for ( var i = 0; i < handlers.length; i++ ) {
	            handlers[i]();
	         }
	      }
	 
	      return 'OK';
	   };
	 
	   /**
	    *
	    */
	   mraidview.showAlert = function( message ) {
	      MRAIDUtilityControllerBridge.showAlert( message );
	   };
	 
	 
	   /*********************************************/
	   /********** INTERNALLY USED METHODS **********/
	   /*********************************************/
	 
	 
	   /**
	    *
	    */
	   mraidview.zeroPad = function( number ) {
	      var text = '';
	      if ( number < 10 ) {
	         text += '0';
	      }
		  text += number;
	      return text;
	   }
	 
	   /***************************************************************************/
	   /********* LEVEL 0 (not part of spec, but required by public API )**********/
	   /***************************************************************************/
	 
	   /**
	    *
	    */
	   mraidview.activate = function( event ) {
		   MRAIDUtilityControllerBridge.activate(event);
	   };

	 
	   /**
	    *
	    */
	   mraidview.addEventListener = function( event, listener ) {
	      var handlers = listeners[event];
		  if ( handlers == null ) {
			 // no handlers defined yet, set it up
	         listeners[event] = [];
	         handlers = listeners[event];
	      }
	 
	      // see if the listener is already present
		  for ( var handler in handlers ) {
		     if ( listener == handler ) {
			    // listener already present, nothing to do
				return;
			}
		  }
	 
	      // not present yet, go ahead and add it
	      handlers.push( listener );
	   };


	   /**
	    *
	    */
	   mraidview.deactivate = function( event ) {
		   MRAIDUtilityControllerBridge.deactivate(event);
	   };

	 
	   /**
	    *
	    */
	   mraidview.removeEventListener = function( event, listener ) {
		  var handlers = listeners[event];
		  if ( handlers != null ) {
	         handlers.remove( listener );
		  }
	   };

	   mraidview.createCss = function() {
	    	 var script = document.createElement('style');
	    	    script.type = 'text/css';
	    	    script.innerHTML = '.closeButton {position:fixed;top:1px;right:1px;z-index: 99999999999;border:'+
	    	    	'2px solid #fff;background: #000;'+
	    	    	'padding: 4px 4px;-webkit-border-radius: 40px;-moz-border-radius: 40px;border-radius:'+
	    	    	'40px;-webkitbox-shadow: rgba(0,0,0,1) 0 1px 0;-moz-box-shadow: rgba(0,0,0,1) 0 1px 0;box-shadow:'+ 
	    	    	'rgba(0,0,0,1) 0 1px 0;text-shadow: rgba(0,0,0,.4) 0 1px 0;color: white;font-size: 16px;font-family:'+
	    	    	'Georgia, serif;text-decoration: none;vertical-align: middle;} .closeButton:active {border-color: #ccc;'+
	    	    	'visibility:visible;}';
	    	    document.getElementsByTagName('body')[0].appendChild(script);
	    	    var closeBtn = document.createElement('input');
	    	    closeBtn.type = "button";
	    	    closeBtn.value = "\u2716";
	    	    closeBtn.name = "button";
	    	    closeBtn.id = "closeButton";
	    	    closeBtn.className = "closeButton";
	    	    closeBtn.addEventListener('click', function() { window.mraid.close(); });
	    	    document.getElementsByTagName('body')[0].appendChild(closeBtn);
	    }

	   /*****************************/
	   /********** LEVEL 1 **********/
	   /*****************************/
	   mraidview.setResizeProperties = function(properties) {
		   resizeProperties = properties;
	   }
	   
	   mraidview.useCustomClose = function(boolean) {
		  if (boolean != true && boolean != false) return;
		  expandProperties.useCustomClose = boolean;
		  MRAIDDisplayControllerBridge.useCustomClose(boolean);
	   }
	   
	   mraidview.storePicture = function(URI) {
		   MRAIDAssetsControllerBridge.storePictureInit(URI);
	   }
	   
	   mraidview.mraidCreateEvent = function(properties) {
		   var startDate = new Date(Date.parse(properties.start));
		   var endDate = new Date(Date.parse(properties.end));
		   if (properties.status == undefined) properties.status = null;
		   if (properties.transparency == undefined) properties.transparency = "opaque";
		   if (properties.recurrance == undefined) properties.recurrance = null;
		   
		   properties.end = {
				   "year" : endDate.getFullYear(),
				   "month" : endDate.getMonth(),
				   "day" : endDate.getDate(),
				   "hour" : endDate.getHours(),
				   "min" : endDate.getMinutes()
		   };
		   properties.start = {
				   "year" : startDate.getFullYear(),
				   "month" : startDate.getMonth(),
				   "day" : startDate.getDate(),
				   "hour" : startDate.getHours(),
				   "min" : startDate.getMinutes()
		   };
		   
			try {		
				MRAIDUtilityControllerBridge.mraidCreateEvent(mraidview.stringify(properties));
			} catch ( e ) {
		     mraidview.showAlert( 'createEvent: ' + e );
		  }
	   }
	   
	   
	   /**
	    *
	    */
	   mraidview.close = function() {
	   try {
		   MRAIDDisplayControllerBridge.close();
		  } catch ( e ) {
		     mraidview.showAlert( 'close: ' + e );
		  }
	   };
	 
	 
	   /**
	    *
	    */
	   mraidview.expand = function(URL) {
		   var url = null;
		   if (URL != undefined) {
			   url = URL;
		   }
		  try {
			  MRAIDDisplayControllerBridge.expand(url, mraidview.stringify(expandProperties));
		  } catch ( e ) {
		     
		  }
	   };

	 
	   /**
	    *
	    */
	   mraidview.hide = function() {
	   try {
		   MRAIDDisplayControllerBridge.hide();
		  } catch ( e ) {
		     mraidview.showAlert( 'hide: ' + e );
		  }
	   };

	 
	   /**
	    *
	    */
	   mraidview.open = function( URL, controls ) {
		  // the navigation parameter is an array, break it into its parts
		  var back = false;
		  var forward = false;
		  var refresh = false;
		  if ( controls == null ) {
			 back = true;
			 forward = true;
			 refresh = true;
		  }
		  else {
			 for ( var i = 0; i < controls.length; i++ ) {
				if ( ( controls[i] == 'none' ) && ( i > 0 ) ) {
				   // error
				   self.fireErrorEvent( 'none must be the only navigation element present.', 'open' );
				   return;
				}
				else if ( controls[i] == 'all' ) {
				   if ( i > 0 ) {
					   // error
					   self.fireErrorEvent( 'none must be the only navigation element present.', 'open' );
					   return;
					}
					
					// ok
					back = true;
					forward = true;
					refresh = true;
				}
				else if ( controls[i] == 'back' ) {
					back = true;
				}
				else if ( controls[i] == 'forward' ) {
					forward = true;
				}
				else if ( controls[i] == 'refresh' ) {
					refresh = true;
				}
		     }
		  }
		
		 try{
			MRAIDDisplayControllerBridge.open(URL, back, forward, refresh);
	   		} catch ( e ) {
		     mraidview.showAlert( 'open: ' + e );
		  }
	   
	   };
	   
	   /**
	   *
	   */
	  mraidview.openMap = function( POI, fullscreen ) {
	      try{
	    	  MRAIDDisplayControllerBridge.openMap(POI, fullscreen);
	      } catch ( e ) {
		     mraidview.showAlert( 'openMap: ' + e );
		  }
	  };

	   
	  /**
	  *
	  */
	  mraidview.playAudio = function( URL, properties ) {
		var autoPlay = false, controls = false, loop = false, position = false, 
		    startStyle = 'normal', stopStyle = 'normal';
		 
	    if ( properties != null ) {
	        
	        if ( ( typeof properties.autoplay != 'undefined' ) && ( properties.autoplay != null ) ) {
	            autoPlay = true;
	        }
	       
	        if ( ( typeof properties.controls != 'undefined' ) && ( properties.controls != null ) ) {
	        	controls = true;
	        }
	        
	        if ( ( typeof properties.loop != 'undefined' ) && ( properties.loop != null ) ) {
	        	loop = true;
	        }
	        
	        if ( ( typeof properties.position != 'undefined' ) && ( properties.position != null ) ) {
	        	position = true;
	        }
	        
	        //TODO check valid values...           
	        
	        if ( ( typeof properties.startStyle != 'undefined' ) && ( properties.startStyle != null ) ) {
	             startStyle = properties.startStyle;
	        }
	        
	        if ( ( typeof properties.stopStyle != 'undefined' ) && ( properties.stopStyle != null ) ) {
	            stopStyle = properties.stopStyle;
	        }  
	        
	        if(startStyle =='normal') {
	        	position = true;
	        }
	        
	 		 if(position) {
	       		autoPlay = true;
	       		controls = false;
	       		loop = false;
	       		stopStyle = 'exit';
	       	}

	       	if(loop) {
	           stopStyle = 'normal'; 
	           controls = true;
	        }
	        
	        if(!autoPlay) {
	        	controls = true;
	        }
	               	
	       	if (!controls) {
				stopStyle = 'exit';
	       }
	    }  
	    
	    try{
	    	MRAIDDisplayControllerBridge.playAudio(URL, autoPlay, controls, loop, position, startStyle, stopStyle);
	    } 
	    catch ( e ) {
		     mraidview.showAlert( 'playAudio: ' + e );
		}     
	 };
	 
	 
	  mraidview.playVideo = function( URL, properties ) {
	
		 var audioMuted = false, autoPlay = false, controls = false, loop = false, inline = [-1, -1, -1, -1], 
		    startStyle = 'normal', stopStyle = 'normal';
	     if ( properties != null ) {
	    
	         if ( ( typeof properties.audio != 'undefined' ) && ( properties.audio != null ) ) {
	             audioMuted = true;
	         }
	         
	         if ( ( typeof properties.autoplay != 'undefined' ) && ( properties.autoplay != null ) ) {
	             autoPlay = true;
	         }
	        
	         if ( ( typeof properties.controls != 'undefined' ) && ( properties.controls != null ) ) {
	         	controls = true;
	         }
	         
	         if ( ( typeof properties.loop != 'undefined' ) && ( properties.loop != null ) ) {
	         	loop = true;
	         }
	        
	         if ( ( typeof properties.position != 'undefined' ) && ( properties.position != null ) ) {
	        	 inline = new Array(4);
	        	 
	        	 inline[0] = properties.position.top;
	        	 inline[1] = properties.position.left;
	        	 
	        	
	        	 
	             if ( ( typeof properties.width != 'undefined' ) && ( properties.width != null ) ) {
	            	 inline[2] =  properties.width;
	            	
	             }
	             else{
	                 //TODO ERROR
	             }
	             
	             if ( ( typeof properties.height != 'undefined' ) && ( properties.height != null ) ) {
	            	 inline[3] =  properties.height;
	            	
	             }
	             else{
	                 //TODO ERROR
	             }
	             
	         }
	       
	        
	         if ( ( typeof properties.startStyle != 'undefined' ) && ( properties.startStyle != null ) ) {
	             startStyle = properties.startStyle;
	         }
	        
	         if ( ( typeof properties.stopStyle != 'undefined' ) && ( properties.stopStyle != null ) ) {
	            stopStyle = properties.stopStyle;
	         }  
	         
			if (loop) {
				stopStyle = 'normal';
				controls = true;
			}

		    if (!autoPlay)
		        controls = true;
			        
		  	if (!controls) {
				stopStyle = 'exit';
			} 
		
			if(inline[0]== -1 || inline[1] == -1)   {
				startStyle = 'fullscreen';
			}
			
	     }    
	  
	     try{
	    	 MRAIDDisplayControllerBridge.playVideo(URL, audioMuted, autoPlay, controls, loop, inline, startStyle, stopStyle);
	       } 
	       catch ( e ) {
	   	     mraidview.showAlert( 'playVideo: ' + e );
	   	}     

	  };

	   
	   
	 
	   /**
	    *
	    */
	   mraidview.resize = function( properties ) {
	   try {
		   MRAIDDisplayControllerBridge.resize(mraidview.stringify(properties));
		  } catch ( e ) {
		     mraidview.showAlert( 'resize: ' + e );
		  }
	   };
	   
	   mraidview.mraidResize = function( width, height, x, y ) {
		   try {
			   MRAIDDisplayControllerBridge.mraidResize(width, height, x, y);
		   } catch (e) {
			   mraidview.showAlert( 'mraidResize: ' +e);
		   }
	   }
	   	
	   
	   mraidview.getExpandProperties = function(){
		   return expandProperties;
	   }

	   mraidview.getOrientationProperties = function(){
		   return orientationProperties;
	   }
	   
	   mraidview.getDefaultExpandProperties = function() {
		   return defaultExpandProperties;
	   }
	 
	   /**
	    *
	    */
	   mraidview.setExpandProperties = function( properties ) {
		  expandProperties = properties;
	   };

	   mraidview.setOrientationProperties = function( properties ) {
		  orientationProperties = properties;
		  
		   try {
			   MRAIDDisplayControllerBridge.setOrientationProperties(properties.allowOrientationChange, properties.forceOrientation);
		   } catch (e) {}
	   };

	 
	   /**
	    *
	    */
	   mraidview.show = function() {
	   try{
		   MRAIDDisplayControllerBridge.show();
		  } catch ( e ) {
		     mraidview.showAlert( 'show: ' + e );
		  }
	   };
	 
	 
	 
	   /*****************************/
	   /********** LEVEL 2 **********/
	   /*****************************/

	   /**
	    *
	    */
	   mraidview.createEvent = function( date, title, body ) {
	      	var msecs=(date.getTime()-date.getMilliseconds());

			try {		
				MRAIDUtilityControllerBridge.createEvent(msecs.toString(), title, body);
			} catch ( e ) {
		     mraidview.showAlert( 'createEvent: ' + e );
		  }
			
	   };
	 
	   /**
	    *
	    */
	   mraidview.makeCall = function( phoneNumber ) {
	   try {
		   MRAIDUtilityControllerBridge.makeCall(phoneNumber);
		  } catch ( e ) {
		     mraidview.showAlert( 'makeCall: ' + e );
		  }
	   };
	 
	 
	   /**
	    *
	    */
	   mraidview.sendMail = function( recipient, subject, body ) {
	   try {
		   MRAIDUtilityControllerBridge.sendMail(recipient, subject, body);
		  } catch ( e ) {
		     mraidview.showAlert( 'sendMail: ' + e );
		  }
	   };
	 

	   /**
	    *
	    */
	   mraidview.sendSMS = function( recipient, body ) {
	   try {
		   MRAIDUtilityControllerBridge.sendSMS(recipient, body);
		  } catch ( e ) {
		     mraidview.showAlert( 'sendSMS: ' + e );
		  }
	   };
	 
	   /**
	    *
	    */
	   mraidview.setShakeProperties = function( properties ) {
	   };
	 
	 
	 
	   /*****************************/
	   /********** LEVEL 3 **********/
	   /*****************************/

	   /**
	    *
	    */
	   mraidview.addAsset = function( URL, alias ) {
		 
	   };
	   /**
	    *
	    */
	   mraidview.request = function( URI, display ) {
		  
	   }; 
	   /**
	    *
	    */
	   mraidview.removeAsset = function( alias ) {
	   };
	   
	   
	   mraidview.stringify = function(args) {
	    if (typeof JSON === 'undefined') {
	        var s = '';
	        var len = args.length;
	        var i;
	        if (typeof len == 'undefined'){
	        	return mraidview.stringifyArg(args);
	        }
	        for (i = 0; i < args.length; i++) {
	            if (i > 0) {
	                s = s + ',';
	            }
	            s = s + mraidview.stringifyArg(args[i]);
	        }
	        s = s + ']';
	        return s;
	    } else {
	        return JSON.stringify(args);
	    }
	};

		mraidview.stringifyArg = function(arg) {
	        var s, type, start, name, nameType, a;
	            type = typeof arg;
	            s = '';
	            if ((type === 'number') || (type === 'boolean')) {
	                s = s + args;
	            } else if (arg instanceof Array) {
	                s = s + '[' + arg + ']';
	            } else if (arg instanceof Object) {
	                start = true;
	                s = s + '{';
	                for (name in arg) {
	                    if (arg[name] !== null) {
	                        if (!start) {
	                            s = s + ',';
	                        }
	                        s = s + '"' + name + '":';
	                        nameType = typeof arg[name];
	                        if ((nameType === 'number') || (nameType === 'boolean')) {
	                            s = s + arg[name];
	                        } else if ((typeof arg[name]) === 'function') {
	                            // don't copy the functions
	                            s = s + '""';
	                        } else if (arg[name] instanceof Object) {
	                            s = s + this.stringify(args[i][name]);
	                        } else {
	                            s = s + '"' + arg[name] + '"';
	                        }
	                        start = false;
	                    }
	                }
	                s = s + '}';
	            } else {
	                a = arg.replace(/\\/g, '\\\\');
	                a = a.replace(/"/g, '\\"');
	                s = s + '"' + a + '"';
	            }
	        mraidview.showAlert('json:'+ s);
			return s;
		}
	   
})();


(function() {
    var mraid = window.mraid = {};
    
    // CONSTANTS ///////////////////////////////////////////////////////////////
    
    var STATES = mraid.STATES = {
        UNKNOWN     :'unknown',
        DEFAULT     :'default',
        RESIZED     :'resized',
        EXPANDED    :'expanded',
        HIDDEN      :'hidden'
    };
    
    var EVENTS = mraid.EVENTS = {
    	READY               :'ready',
    	ONRESULTS			:'onResults',
    	ONSTATUSCHANGE		:'onStatusChange',
    	ONERROR				:'onError',
        ASSETREADY          :'assetReady',
        ASSETREMOVED        :'assetRemoved',
        ASSETRETIRED        :'assetRetired',
        ERROR               :'error',
        INFO                :'info',
        HEADINGCHANGE       :'headingChange',
        KEYBOARDCHANGE      :'keyboardChange',
        LOCATIONCHANGE      :'locationChange',
        NETWORKCHANGE       :'networkChange',
        ORIENTATIONCHANGE   :'orientationChange',
        RESPONSE            :'response',
        SCREENCHANGE        :'screenChange',
        SHAKE               :'shake',
        SIZECHANGE          :'sizeChange',
        STATECHANGE         :'stateChange',
        TILTCHANGE          :'tiltChange',
        VIEWABLECHANGE      :'viewableChange'
    };
    
    var CONTROLS = mraid.CONTROLS = {
        BACK    :'back',
        FORWARD :'forward',
        REFRESH :'refresh',
        ALL     :'all'
    };
    
    var FEATURES = mraid.FEATURES = {
        LEVEL1      :'level-1',
        LEVEL2      :'level-2',
        LEVEL3      :'level-3',
        SCREEN      :'screen',
        ORIENTATION :'orientation',
        HEADING     :'heading',
        LOCATION    :'location',
        SHAKE       :'shake',
        TILT        :'tilt',
        NETWORK     :'network',
        SMS         :'sms',
        PHONE       :'phone',
        EMAIL       :'email',
        CALENDAR    :'calendar',
        CAMERA      :'camera',
        AUDIO       :'audio',
        VIDEO       :'video',
        MAP         :'map'
    };
    
    var NETWORK = mraid.NETWORK = {
        OFFLINE :'offline',
        WIFI    :'wifi',
        CELL    :'cell',
        UNKNOWN :'unknown'
    };
    
    var PLACEMENTTYPE = mraid.PLACEMENTTYPE = {
    	INTERSTITIAL 	: 'interstitial',
    	INLINE			: 'inline',
    	UNKNOWN			: 'unknown'
    }

    // PRIVATE PROPERTIES (sdk controlled) //////////////////////////////////////////////////////
    
    var state = STATES.UNKNOWN;
    
    var size = {
        width:0,
        height:0,
        x:0,
        y:0
    };
  
    
    var defaultPosition = {
        x:0,
        y:0,
        width:0,
        height:0
    };
    
    var maxSize = {
        width:0,
        height:0
    };
    
    var supports = {
        'level-1':true,
        'level-2':true,
        'level-3':true,
        'screen':true,
        'orientation':true,
        'heading':true,
        'location':true,
        'shake':true,
        'tilt':true,
        'network':true,
        'sms':true,
        'phone':true,
        'email':true,
        'calendar':true,
        'camera':true,
        'audio':true,
        'video':true,
        'map':true
    };
    
    var heading = -1;
    
    var keyboardState = false;
    
    var location = null;
    
    var network = NETWORK.UNKNOWN;
    
    var orientation = -1;
    
    var screenSize = null;
    
    var shakeProperties = null;
    
    var tilt = null;
    
    var assets = {};
    
    var cacheRemaining = -1;
    
    var viewable = false;
    
   
    // MRAID specific properties //////////////////////////////////////////////////////////
    var placement = PLACEMENTTYPE.UNKNOWN;
    
    var mraidVersion = '2.0';
    
    var resizeProperties = {
    		"width" : 0,	//width of creative in pixels
    		"height": 0,	//height of creative in pixels
    		"customClosePosition" : "string",	//"top-left", "top-right", "center" etc
    		"offsetX" : 0, //horizontal delta from top-left corner to desired position.  <0 right, >0 left
    		"offsetY" : 0, //horizontal delta from top-left corner to desired position.  <0 up, >0 down
    		"allowOffscreen" : false //drawable outside screen?
    };
    
    
    
    // PRIVATE PROPERTIES (internal) //////////////////////////////////////////////////////
    
    var readyTimeout = 10000;
    var readyDuration = 0;
    
    var dimensionValidators = {
            x:function(value) { return !isNaN(value) && value >= 0; },
            y:function(value) { return !isNaN(value) && value >= 0; },
            width:function(value) { return !isNaN(value) && value >= 0 && value <= screenSize.width; },
            height:function(value) { return !isNaN(value) && value >= 0 && value <= screenSize.height; }
    };
    
   
    var expandPropertyValidators = {
        useBackground:function(value) { return (value === true || value === false); },
        backgroundColor:function(value) { return (typeof value == 'string' && value.substr(0,1) == '#' && !isNaN(parseInt(value.substr(1), 16))); },
        backgroundOpacity:function(value) { return !isNaN(value) && value >= 0 && value <= 1; },
        lockOrientation:function(value) { return (value === true || value === false); }
    };
    
    var shakePropertyValidators = {
        intensity:function(value) { return !isNaN(value); },
        interval:function(value) { return !isNaN(value); }
    };
    
    var changeHandlers = {
        state:function(val) {
            if (state == STATES.UNKNOWN) {
                broadcastEvent(EVENTS.INFO, 'controller initialized, attempting callback');
            }
            broadcastEvent(EVENTS.INFO, 'setting state to ' + stringify(val));
            state = val;
            broadcastEvent(EVENTS.STATECHANGE, state);
        },
        placement:function(val) {
        	broadcastEvent(EVENTS.INFO, 'setting placement to ' + stringify(val));
        	if (stringify(val) == 'INLINE') {
				placement = PLACEMENTTYPE.INLINE;
			}
			if (stringify(val) == 'INTERSTITIAL') {
				placement = PLACEMENTTYPE.INTERSTITIAL;
			}
        },
        size:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting size to ' + stringify(val));
            size = val;
            broadcastEvent(EVENTS.SIZECHANGE, size.width, size.height);
        },
        defaultPosition:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting default position to ' + stringify(val));
            defaultPosition = val;
        },
        maxSize:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting maxSize to ' + stringify(val));
            maxSize = val;
        },
        expandProperties:function(val) {
            broadcastEvent(EVENTS.INFO, 'merging expandProperties with ' + stringify(val));
            for (var i in val) {
                mraidview.getExpandProperties()[i] = val[i];
            }
        },
        supports:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting supports to ' + stringify(val));
            supports = {};
            for (var key in FEATURES) {
                supports[FEATURES[key]] = contains(FEATURES[key], val);
            }
        },
        heading:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting heading to ' + stringify(val));
            heading = val;
            broadcastEvent(EVENTS.HEADINGCHANGE, heading);
        },
        keyboardState:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting keyboardState to ' + stringify(val));
            keyboardState = val;
            broadcastEvent(EVENTS.KEYBOARDCHANGE, keyboardState);
        },
        location:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting location to ' + stringify(val));
            location = val;
            broadcastEvent(EVENTS.LOCATIONCHANGE, location.lat, location.lon, location.acc);
        },
        network:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting network to ' + stringify(val));
            network = val;
            broadcastEvent(EVENTS.NETWORKCHANGE, (network != NETWORK.OFFLINE && network != NETWORK.UNKNOWN), network);
        },
        orientation:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting orientation to ' + stringify(val));
            orientation = val;
            broadcastEvent(EVENTS.ORIENTATIONCHANGE, orientation);
        },
        screenSize:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting screenSize to ' + stringify(val));
            screenSize = val;
            broadcastEvent(EVENTS.SCREENCHANGE, screenSize.width, screenSize.height);
        },
        shakeProperties:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting shakeProperties to ' + stringify(val));
            shakeProperties = val;
        },
        tilt:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting tilt to ' + stringify(val));
            tilt = val;
            broadcastEvent(EVENTS.TILTCHANGE, tilt.x, tilt.y, tilt.z);
        },
        cacheRemaining:function(val) {
            broadcastEvent(EVENTS.INFO, 'setting cacheRemaining to ' + stringify(val));
            cacheRemaining = val;
        },
        viewable:function(val) {
            broadcastEvent(EVENTS.VIEWABLECHANGE, 'setting viewable to ' + stringify(val));
            viewable = val;
        }
    };
    
    var listeners = {};
    
    var EventListeners = function(event) {
        this.event = event;
        this.count = 0;
        var listeners = {};
        
        this.add = function(func) {
            var id = String(func);
            if (!listeners[id]) {
                listeners[id] = func;
                this.count++;
                if (this.count == 1) mraidview.activate(event);
            }
        };
        this.remove = function(func) {
            var id = String(func);
            if (listeners[id]) {
                listeners[id] = null;
                delete listeners[id];
                this.count--;
                if (this.count == 0) mraidview.deactivate(event);
                return true;
            } else {
                return false;
            }
        };
        this.removeAll = function() { for (var id in listeners) this.remove(listeners[id]); };
        this.broadcast = function(args) { for (var id in listeners) listeners[id].apply({}, args); };
        this.toString = function() {
            var out = [event,':'];
            for (var id in listeners) out.push('|',id,'|');
            return out.join('');
        };
    };
    
    // PRIVATE METHODS ////////////////////////////////////////////////////////////
    
    mraidview.addEventListener('change', function(properties) {
      for (var property in properties) {
          var handler = changeHandlers[property];

          try{ handler(properties[property]); }
          catch (e) {}
      }
    });
    
    mraidview.addEventListener('shake', function() {
        broadcastEvent(EVENTS.SHAKE);
    });

    mraidview.addEventListener('ready', function() {
        broadcastEvent(EVENTS.READY);
    });
    
    mraidview.addEventListener('error', function(message, action) {
        broadcastEvent(EVENTS.ERROR, message, action);
    });
    
    mraidview.addEventListener('response', function(uri, response) {
        broadcastEvent(EVENTS.RESPONSE, uri, response);
    });
    
    mraidview.addEventListener('assetReady', function(alias, URL) {
        assets[alias] = URL;
        broadcastEvent(EVENTS.ASSETREADY, alias);
    });
    
    mraidview.addEventListener('assetRemoved', function(alias) {
        assets[alias] = null;
        delete assets[alias];
        broadcastEvent(EVENTS.ASSETREMOVED, alias);
    });
    
    mraidview.addEventListener('assetRetired', function(alias) {
        assets[alias] = null;
        delete assets[alias];
        broadcastEvent(EVENTS.ASSETRETIRED, alias);
    });
 	
    var clone = function(obj) {
        var f = function() {};
        f.prototype = obj;
        return new f();
    };
    
    var stringify = function(obj) {
        if (typeof obj == 'object') {
            if (obj.push) {
                var out = [];
                for (var p in obj) {
                    out.push(obj[p]);
                }
                return '[' + out.join(',') + ']';
            } else {
                var out = [];
                for (var p in obj) {
                    out.push('\''+p+'\':'+obj[p]);
                }
                return '{' + out.join(',') + '}';
            }
        } else {
            return String(obj);
        }
    };
    
    var valid = function(obj, validators, action, full) {
        if (full) {
            if (obj === undefined) {
                broadcastEvent(EVENTS.ERROR, 'Required object missing.', action);
                return false;
            } else {
                for (var i in validators) {
                    if (obj[i] === undefined) {
                        broadcastEvent(EVENTS.ERROR, 'Object missing required property ' + i, action);
                        return false;
                    }
                }
            }
        }
        for (var i in obj) {
            if (!validators[i]) {
                broadcastEvent(EVENTS.ERROR, 'Invalid property specified - ' + i + '.', action);
                return false;
            } else if (!validators[i](obj[i])) {
                broadcastEvent(EVENTS.ERROR, 'Value of property ' + i + '<' + obj[i] + '>' +' is not valid type.', action);
                return false;
            }
        }
        return true;
    };
    
    var contains = function(value, array) {
        for (var i in array) if (array[i] == value) return true;
        return false;
    };
    
    var broadcastEvent = function() {
        var args = new Array(arguments.length);
        for (var i = 0; i < arguments.length; i++) args[i] = arguments[i];
        var event = args.shift();
        try{
        if (listeners[event]) listeners[event].broadcast(args);
        }
        catch (e) {}
    }
    
    var trim = function(s)
	{
		var l=0; var r=s.length -1;
		while(l < s.length && s[l] == ' ')
		{	l++; }
		while(r > l && s[r] == ' ')
		{	r-=1;	}
		return s.substring(l, r+1);
	}
   
    
    mraid.getViewable = function() {
    	return viewable;
    }
    
    mraid.getResizeProperties = function() {
    	return resizeProperties;
    }
    
    mraid.getExpandProperties = function() {
        return mraidview.getExpandProperties();
    };

    mraid.getOrientationProperties = function() {
        return mraidview.getOrientationProperties();
    };

    mraid.getPlacement = function() {
    	return placement;
    }
    
    mraid.setResizeProperties = function(properties) {
    	mraidview.setResizeProperties(properties);
    	
    }
    
    mraid.setExpandProperties = function(properties) {
    	if (properties.width == undefined) properties.width = maxSize.width;
    	if (properties.height == undefined) properties.height = maxSize.height;
    	if (properties.useCustomClose == undefined) properties.useCustomClose = mraidview.getDefaultExpandProperties().useCustomClose;
    	if (properties.isModal == undefined) properties.isModal = mraidview.getDefaultExpandProperties().isModal;
    	if (properties.lockOrientation == undefined) properties.lockOrientation = mraidview.getDefaultExpandProperties().lockOrientation;
    	if (properties.useBackground == undefined) properties.useBackground = mraidview.getDefaultExpandProperties().useBackground;
    	if (properties.backgroundColor == undefined) properties.backgroundColor = mraidview.getDefaultExpandProperties().backgroundColor;
    	if (properties.backgroundOpacity == undefined) properties.backgroundOpacity = mraidview.getDefaultExpandProperties().backgroundOpacity;
    	mraidview.setExpandProperties(properties);  
    };
    
    mraid.setOrientationProperties = function(properties) {
      mraidview.setOrientationProperties(properties);
    };
    
    mraid.storePicture = function(URI) {
    	if (!URI) return;
    	mraidview.storePicture(URI);
    }
    
    mraid.mraidResize = function() {
    	properties = this.getResizeProperties();
    	mraidview.mraidResize(properties.width, properties.height, properties.offsetX, properties.offsetY);
    }
    // LEVEL 1 ////////////////////////////////////////////////////////////////////
   
    
    mraid.signalReady = function() {
    };
    
    mraid.addEventListener = function(event, listener) {
        if (!event || !listener) {
            broadcastEvent(EVENTS.ERROR, 'Both event and listener are required.', 'addEventListener');
        } else if (!contains(event, EVENTS)) {
			broadcastEvent(EVENTS.ERROR, 'Unknown event: ' + event, 'addEventListener');
        } else {
            if (!listeners[event]) listeners[event] = new EventListeners(event);
            listeners[event].add(listener);
        }
    };
    
    mraid.close = function() {
        mraidview.close();
    };
    
    mraid.expand = function(URL) {
    	if (state != STATES.EXPANDED) {
    		 mraidview.expand(URL);
        }
    };
    
    mraid.getDefaultPosition = function() {
        return clone(defaultPosition);
    };
    
    mraid.getMaxSize = function() {
        return clone(maxSize);
    };
    
    mraid.getSize = function() {
        return clone(size);
    };
    
    mraid.getCurrentPosition = function() {
    	return clone(size);
    }
    
    mraid.getState = function() {
        return state;
    };
    
    mraid.setState = function(state) {
    	this.state = state;
    }
    
    mraid.hide = function() {
        if (state == STATES.HIDDEN) {
            broadcastEvent(EVENTS.ERROR, 'Ad is currently hidden.', 'hide');
        } else {
            mraidview.hide();
        }
    };
    
    mraid.open = function(URL, controls) {
        if (!URL) {
            broadcastEvent(EVENTS.ERROR, 'URL is required.', 'open');
        } else {
            mraidview.open(URL, controls);
        }
    };
    
    mraid.openMap = function(POI, fullscreen) {
        if (!POI) {
            broadcastEvent(EVENTS.ERROR, 'POI is required.', 'openMap');
        } else {
            mraidview.openMap(POI, fullscreen);
        }
    };

    mraid.removeEventListener = function(event, listener) {
        if (!event) {
            broadcastEvent(EVENTS.ERROR, 'Must specify an event.', 'removeEventListener');
        } else {
            if (listener && (!listeners[event] || !listeners[event].remove(listener))) {
                broadcastEvent(EVENTS.ERROR, 'Listener not currently registered for event', 'removeEventListener');
                return;  
            } 
            else if (listeners[event]){
                listeners[event].removeAll();
            }
            
            if (listeners[event] && listeners[event].count == 0) {
                listeners[event] = null;
                delete listeners[event];
            }
        }
    };
    
    mraid.resize = function(properties) {
    	mraidview.resize(properties);
    };
   
    mraid.show = function() {
        if (state != STATES.HIDDEN) {
            broadcastEvent(EVENTS.ERROR, 'Ad is currently visible.', 'show');
        } else {
            mraidview.show();
        }
    };
    
    mraid.playAudio = function(URL, properties) {
        if (!supports[FEATURES.AUDIO]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'playAudio');
        } else if (!URL || typeof URL != 'string') {
            broadcastEvent(EVENTS.ERROR, 'Request must specify a URL', 'playAudio');
        } else {
            mraidview.playAudio(URL, properties);
        }
    };
    
    mraid.playVideo = function(URL, properties) {
        if (!supports[FEATURES.VIDEO]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'playVideo');
        } else if (!URL || typeof URL != 'string') {
            broadcastEvent(EVENTS.ERROR, 'Request must specify a URL', 'playVideo');
        } else {
            mraidview.playVideo(URL, properties);
        }
    };

    // LEVEL 2 ////////////////////////////////////////////////////////////////////
    
    mraid.createEvent = function(date, title, body) {
        if (!supports[FEATURES.CALENDAR]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'createEvent');
        } else if (!date || typeof date != 'object' || !date.getDate) {
            broadcastEvent(EVENTS.ERROR, 'Valid date required.', 'createEvent');
        } else if (!title || typeof title != 'string'|| trim(title).length == 0) {
            broadcastEvent(EVENTS.ERROR, 'Valid title required.', 'createEvent');
        }else if (!body || typeof body != 'string' || trim(body).length == 0){
        	broadcastEvent(EVENTS.ERROR, 'Valid body required.', 'createEvent');
        }
         else {
            mraidview.createEvent(date, title, body);
        }
    };
    
    mraid.createCalendarEvent = function(properties) {
    	mraidview.mraidCreateEvent(properties);
    }
    
    
    
    mraid.getHeading = function() {
        if (!supports[FEATURES.HEADING]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getHeading');
            return null;
        }
        return heading;
    };
    
    mraid.getKeyboardState = function() {
        if (!supports[FEATURES.LEVEL2]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getKeyboardState');
            return null;
        }
        return keyboardState;
    }
    
    mraid.getLocation = function() {
        if (!supports[FEATURES.LOCATION]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getLocation');
            return null;
        }
        return (null == location)?null:clone(location);
    };
    
    mraid.getNetwork = function() {
        if (!supports[FEATURES.NETWORK]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getNetwork');
            return null;
        }
        return network;
    };
    
    mraid.getOrientation = function() {
        if (!supports[FEATURES.ORIENTATION]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getOrientation');
            return null;
        }
        return orientation;
    };
    
    mraid.getScreenSize = function() {
        if (!supports[FEATURES.SCREEN]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getScreenSize');
            return null;
        } else {
            return (null == screenSize)?null:clone(screenSize);
        }
    };
    
    mraid.getShakeProperties = function() {
        if (!supports[FEATURES.SHAKE]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getShakeProperties');
            return null;
        } else {
            return (null == shakeProperties)?null:clone(shakeProperties);
        }
    };
    
    mraid.getTilt = function() {
        if (!supports[FEATURES.TILT]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getTilt');
            return null;
        } else {
            return (null == tilt)?null:clone(tilt);
        }
    };
    
    mraid.makeCall = function(number) {
        if (!supports[FEATURES.PHONE]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'makeCall');
        } else if (!number || typeof number != 'string' || trim(number).length == 0) {
            broadcastEvent(EVENTS.ERROR, 'Request must provide a number to call.', 'makeCall');
        } else {
            mraidview.makeCall(number);
        }
    };
    
    mraid.sendMail = function(recipient, subject, body) {
        if (!supports[FEATURES.EMAIL]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'sendMail');
        } else if (!recipient || typeof recipient != 'string' || trim(recipient).length == 0) {
            broadcastEvent(EVENTS.ERROR, 'Request must specify a recipient.', 'sendMail');
        } else {
            mraidview.sendMail(recipient, subject, body);
        }
    };
    
    mraid.sendSMS = function(recipient, body) {
        if (!supports[FEATURES.SMS]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'sendSMS');
        } else if (!recipient || typeof recipient != 'string' ||  trim(recipient).length == 0) {
            broadcastEvent(EVENTS.ERROR, 'Request must specify a recipient.', 'sendSMS');
        } else {
            mraidview.sendSMS(recipient, body);
        }
    };
    
    mraid.setShakeProperties = function(properties) {
        if (!supports[FEATURES.SHAKE]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'setShakeProperties');
        } else if (valid(properties, shakePropertyValidators, 'setShakeProperties')) {
            mraidview.setShakeProperties(properties);
        }
    };
   
    mraid.supports = function(feature) {
        if (supports[feature]) {
            return true;
        } else {
            return false;
        }
    };
    
    // LEVEL 3 ////////////////////////////////////////////////////////////////////
    
    mraid.addAsset = function(URL, alias) {
        if (!URL || !alias || typeof URL != 'string' || typeof alias != 'string') {
            broadcastEvent(EVENTS.ERROR, 'URL and alias are required.', 'addAsset');
        } else if (supports[FEATURES.LEVEL3]) {
            mraidview.addAsset(URL, alias);
        } else if (URL.indexOf('ormma://') == 0) {
            broadcastEvent(EVENTS.ERROR, 'Native device assets not supported by this client.', 'addAsset');
        } else {
            assets[alias] = URL;
            broadcastEvent(EVENTS.ASSETREADY, alias);
        }
    };
    
    mraid.addAssets = function(assets) {
        for (var alias in assets) {
            mraid.addAsset(assets[alias], alias);
        }
    };
    
    mraid.getAssetURL = function(alias) {
        if (!assets[alias]) {
            broadcastEvent(EVENTS.ERROR, 'Alias unknown.', 'getAssetURL');
            return null;
        }
        return assets[alias];
    };
    
    mraid.getCacheRemaining = function() {
        if (!supports[FEATURES.LEVEL3]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'getCacheRemaining');
            return null;
        }
        return cacheRemaining;
    };
    
    mraid.request = function(uri, display) {
        if (!supports[FEATURES.LEVEL3]) {
            broadcastEvent(EVENTS.ERROR, 'Method not supported by this client.', 'request');
        } else if (!uri || typeof uri != 'string') {
            broadcastEvent(EVENTS.ERROR, 'URI is required.', 'request');
        } else {
            mraidview.request(uri, display);
        }
    };
    
    mraid.removeAllAssets = function() {
        for (var alias in assets) {
            mraid.removeAsset(alias);
        }
    };
    
    mraid.removeAsset = function(alias) {
        if (!alias || typeof alias != 'string') {
            broadcastEvent(EVENTS.ERROR, 'Alias is required.', 'removeAsset');
        } else if (!assets[alias]) {
            broadcastEvent(EVENTS.ERROR, 'Alias unknown.', 'removeAsset');
        } else if (supports[FEATURES.LEVEL3]) {
            mraidview.removeAsset(alias);
        } else {
            assets[alias] = null;
            delete assets[alias];
            broadcastEvent(EVENTS.ASSETREMOVED, alias);
        }
    };
    
    
    
	
	mraid.getExpandProperties = function() {
		return mraidview.getExpandProperties();
	}
	
	mraid.getPlacementType = function() {
		return mraid.getPlacement();
	}
	
	mraid.getVersion = function() {
		return mraidVersion;
	}
	
	mraid.isViewable = function() {
		return mraid.getViewable();
	}
	
	mraid.useCustomClose = function(boolean) {
		mraidview.useCustomClose(boolean);
	}
	
	
})();

(function () {
	var ormma = window.ormma = {};
	
	ormma.signalReady = function() {
        mraid.signalReady();
    };
    
    ormma.addEventListener = function(event, listener) {
       mraid.addEventListener(event, listener);
    };
    
    ormma.close = function() {
    	mraid.close();
    };
    
    ormma.expand = function(URL) {
    	mraid.expand(URL);
    };
    
    ormma.getDefaultPosition = function() {
        return mraid.getDefaultPosition();
    };
    
    ormma.getExpandProperties = function() {
        return mraid.getExpandProperties();
    };
    
    ormma.getMaxSize = function() {
        return mraid.getMaxsize();
    };
    
    ormma.getSize = function() {
        return mraid.getSize();
    };
    
    ormma.getState = function() {
        return mraid.getState();
    };
    
    ormma.hide = function() {
    	mraid.hide();
    };
    
    ormma.open = function(URL, controls) {
        mraid.open(URL, controls);
    };
    
    ormma.openMap = function(POI, fullscreen) {
    	mraid.openMap(POI, fullscreen);
    };

    ormma.removeEventListener = function(event, listener) {
    	mraid.removeEventListener(event, listener);
    };
    
    ormma.resize = function(width, height) {
       mraid.resize(width, height);
    };
    
    ormma.setExpandProperties = function(properties) {
    	mraid.setExpandProperties(properties);
    };
    
    ormma.show = function() {
    	mraid.show();
    };
    
    ormma.playAudio = function(URL, properties) {
    	mraid.playAudio(URL, properties);
    };
    
    
    ormma.playVideo = function(URL, properties) {
    	mraid.playVideo(URL, properties);
    };

    
    
    
    // LEVEL 2 ////////////////////////////////////////////////////////////////////
    
    ormma.createEvent = function(date, title, body) {
    	mraid.createEvent(date, title, body);
    };
    
    ormma.getHeading = function() {
    	return mraid.getHeading();
    };
    
    ormma.getKeyboardState = function() {
       return mraid.getKeyboardState();
    };
    
    ormma.getLocation = function() {
    	return mraid.getKeyboardState();
    };
    
    ormma.getNetwork = function() {
       return mraid.getNetwork();
    };
    
    ormma.getOrientation = function() {
    	return mraid.getOrientation();
    };
    
    ormma.getScreenSize = function() {
        return mraid.getScreenSize();
    };
    
    ormma.getShakeProperties = function() {
    	return mraid.getScreenSize();
    };
    
    ormma.getTilt = function() {
        return mraid.getTilt();
    };
    
    ormma.makeCall = function(number) {
    	mraid.makeCall(number);
    };
    
    ormma.sendMail = function(recipient, subject, body) {
    	mraid.sendMail(recipient, subject, body);
    };
    
    ormma.sendSMS = function(recipient, body) {
    	mraid.sendSMS(recipient, body);
    };
    
    ormma.setShakeProperties = function(properties) {
    	mraid.setShakeProperties(properties);
    };
    
    ormma.supports = function(feature) {
    	mraid.supports(feature);
    };
    
    // LEVEL 3 ////////////////////////////////////////////////////////////////////
    
    ormma.addAsset = function(URL, alias) {
    	mraid.addAsset(URL, alias);
    };
    
    ormma.addAssets = function(assets) {
    	mraid.addAssets(assets);
    };
    
    ormma.getAssetURL = function(alias) {
        return mraid.getAssetURL(alias);
    };
    
    ormma.getCacheRemaining = function() {
        return mraid.getCacheRemaining();
    };
    
    ormma.request = function(uri, display) {
    	mraid.request(uri, display);
    };
    
    ormma.removeAllAssets = function() {
       mraid.removeAllAssets();
    };
    
    ormma.removeAsset = function(alias) {
       mraid.removeAsset(alias);
    };
    
    ormma.getViewable = function() {
    	return mraid.getViewable();
    }
    
    var clone = function(obj) {
        var f = function() {};
        f.prototype = obj;
        return new f();
    };
	
})();
