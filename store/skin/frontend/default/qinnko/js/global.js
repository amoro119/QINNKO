function dump(arr,level) {
	var dumped_text = "";
	if(!level) level = 0;
	
	//The padding given at the beginning of the line.
	var level_padding = "";
	for(var j=0;j<level+1;j++) level_padding += "    ";
	
	if(typeof(arr) == 'object') { //Array/Hashes/Objects 
		for(var item in arr) {
			var value = arr[item];
			
			if(typeof(value) == 'object') { //If it is an array,
				dumped_text += level_padding + "'" + item + "' ...\n";
				//dumped_text += dump(value,level+1);
			} else {
				dumped_text += level_padding + "'" + item + "' => \"" + value + "\"\n";
			}
		}
	} else { //Stings/Chars/Numbers etc.
		dumped_text = "===>"+arr+"<===("+typeof(arr)+")";
	}
	return dumped_text;
}

/*	All YUI library methods migrated to jQuery.
 *  Lee Daffen - lee.daffen@net-a-porter.com
 */

function clearDefault(el) {
  if (el.defaultValue==el.value) { el.value = ""; }
}

// General globals (Now set in the incJavascriptLinks.jsp
// This removes the need for two JSPs with different hard coded values.
//var channel = 'intl';

// zoom-related global variables
var bigWidth, //width of the zoom image
	smallWidth, // width of zoomed image
	bigHeight, // height of the zoom image
	bigX = 0, // zoom image x position
	bigY = 0; // zoom image y position

//ratio between the small and big images of the product
//hard-coded, we could work this out dynamically
var zoomRatio = 0.25;

//Used to define a custom area where the zooming functionality can occur.
var productImageMarginTop = 32,
    productImageMarginSides = 50,
	productImageMarginBottom = 38;

var zoomWindowBoxWidth = 0,
	zoomWindowBoxHeight = 0,
	smallHeight,
	bigBoxWidth,
	bigBoxHeight,
	factorY,
	factorX,
	easing = 0.22,
	zoomInterval = 0,
	mouseX = 0,
	mouseY = 0,
	sHeight,
	elements,
	scrollBorder,
	thumbsPos = [],
	thumbsPosDown = [],
	imgAmount,
	animating = false,
	i = 0,
	g = 92*5,
	idc = 0,
	delay = 0,
	rollOverInetrval,
	hideInterval,
	str =  window.location,
	zoomImageShown = false,
	nr,
	issueNumber,
	pageNumber,
	images,
	scrollHeight,
	isZoomOn = false,
	isVideoOn = false,
	videoHasBeenLoaded = false,
	productPageMaxVisible = 4,
	isIE6 = (navigator.appVersion.indexOf("MSIE 6") != -1) ? true : false ;

function initProductPage() {
	sHeight = 92;

	jQuery("body").mousemove(function(e){
		mouseX = e.pageX;
		mouseY = e.pageY;
	});

	elements = countElements("thumbnails-mask","img");
	scrollHeight = sHeight * elements ;
	//document.getElementById("thumbnails-loop").style.top = scrollHeight+'px';

	smallWidth = 230;
	smallHeight = 345;

	if(elements > productPageMaxVisible) {
		jQuery("#up-arrow").click(moveDown);
		jQuery("#down-arrow").click(moveUp);
	}

	//zoom onload vars
	var oUpArrow = document.getElementById("up-arrow"),
		oDownArrow = document.getElementById("down-arrow");

	countsImages('thumbnails-mask');
	
		// tabbed navigation
	jQuery(".yui-nav li").click(function(e){
		e.preventDefault();
		var link = jQuery(this).find("a").attr("href");

		if(!jQuery(this).hasClass("selected") && link) {
			jQuery(".yui-nav li").removeClass("selected");
			jQuery(this).addClass("selected");
			jQuery(".yui-content > div").hide();
			jQuery(link).show();
		}
	});
	

   if(jQuery(".en-last-desc")) {
       jQuery(".en-last-desc").hide();
       jQuery(".en-ellipsis").show();
   }

	jQuery(".expand-details").click(function(e) {
        var $this = jQuery(this);
        e.preventDefault();

		if(!$this.hasClass("open")) {
            jQuery("#demo .yui-content").animate({
                "height": "20em"
            }, function() {
				jQuery(".en-ellipsis").hide();
				jQuery(".en-last-desc").show();
			});
            jQuery(".expand-details").addClass("open").html("<img src='/skin/frontend/default/qinnko/images/pp-close-off.gif' alt='More Info' />");
        } else {
            jQuery(".en-last-desc").hide();
			jQuery(".en-ellipsis").show();
			jQuery("#demo .yui-content").animate({
                "height": "13.4em"
            });
            jQuery(".expand-details").removeClass("open").html("<img src='/skin/frontend/default/qinnko/images/pp-more-info-off.gif' alt='More Info' />");
        }
    });
	
}


function navigtionsetup() {
	str =  window.location;
	str = str.split("/");
	issueNumber = str[4];

	if(str[5]!="Issue") {
		pageNumber = str[5].split("=");
		pageNumber = pageNumber[1];
		pageNumber = pageNumber.split("");

		if(pageNumber[1]=="?"||pageNumber[1]==undefined) {
			pageNumber = pageNumber[0];
		} else {
			pageNumber = pageNumber[0]+""+pageNumber[1];
		}
	}
}

function prevPage() {
	navigtionsetup();
	if (pageNumber>1) {
		pageNumber--;
		window.location="/Content/"+issueNumber+"/Issue&pageNo="+pageNumber+"";
	}
}

function navigateToPage(nr) {
	navigtionsetup();
	window.location = "/Content/"+issueNumber+"/Issue&pageNo="+nr+"";
}

function nextPage() {
	navigtionsetup();
	pageNumber++;
	window.location= "/Content/"+issueNumber+"/Issue&pageNo="+pageNumber+"";
}

function countsImages (element_id) {
	images = document.getElementById(element_id).getElementsByTagName('img');

	imgAmount = (images.length -1);
	idcc = (images.length -1);
	//var images2 = document.getElementById('thumbnails-loop').getElementsByTagName('img');
	scrollBorder = (sHeight * 3 ) - (sHeight*images.length);

	if(images.length > productPageMaxVisible) {
	  for(var d=0;d<images.length;d++)
	  {
			thumbsPos.push(sHeight*(d-1));

			thumbsPosDown.unshift(sHeight*(d-1));
			//alert(images[d]);
			//document.getElementById(images[d].id).style.top = thumbsPos[d]+'px';
			images[d].style.top = thumbsPos[d]+'px'
	  }
	}
}

//////////////COVER ROLLOVER FUNCTIONALITY //////////////////////////////Pawel
function imageOn(imageName) {
	var imgSrcOff = imageName.src,
		imgSrcOn = imgSrcOff.replace(/inactive/gi, "active"),
		promoTxtOff = document.getElementById("promo-text").src,
		promoTxtOn = promoTxtOff.replace(/off/gi, "on"),
		promoId = imageName.id,
		issueNbr = document.getElementById("promo-text").src;

	issueNbr = issueNbr.split("/");

	promoId = promoId.slice(5);
	imageName.src = imgSrcOn;
	document.getElementById("promo-text").src = "/images/issues/2008/"+issueNbr[6]+"/cover/promotext"+promoId+"_active.jpg";
}

function imageOff(imageName) {
	var imgSrcOff = imageName.src,
		imgSrcOn = imgSrcOff.replace(/active/gi, "inactive"),
		promoTxtOff = document.getElementById("promo-text").src,
		promoTxtOn = promoTxtOff.replace(/active/gi, "inactive"),
		promoId = imageName.id,
		issueNbr = document.getElementById("promo-text").src;

	issueNbr = issueNbr.split("/");

	promoId = promoId.slice(5);
	imageName.src = imgSrcOn;
	document.getElementById("promo-text").src = "/images/issues/2008/"+issueNbr[6]+"/cover/promotext_inactive.jpg";
}
////////////////////////////////////////////////////////////////////////

//show zoom image
function showBig() {
	largeImageShown = true;

    // Hide the video if it's on
    if (isVideoOn) {
        hideVideo();
    }

    clearIntrv();

	jQuery("#zoom-box").css("visibility","visible");
	jQuery("#zoom-image").css("visibility","visible");
	jQuery("#zoomWindowBox").css("visibility","visible");
	jQuery("#product-details h1 a").css("visibility","hidden");
	jQuery("#tabbed-info").css("visibility","hidden");
	jQuery("#tabbed-info *").css("visibility","hidden");

	zoomInterval = setInterval(animateBigImage, 10);

    isZoomOn = true;
}

/*
 * Removes the zoom & hides the image zoom's containing elements
 */
function removeZoom() {
    clearInterval(zoomInterval);

	jQuery("#zoom-box").css("visibility","hidden");
	jQuery("#zoom-image").css("visibility","hidden");
	jQuery("#zoomWindowBox").css("visibility","hidden");
	jQuery("#product-details h1 a").css("visibility","visible");
	jQuery("#tabbed-info").css("visibility","visible");
	jQuery("#tabbed-info *").css("visibility","visible");
	if(isIE6) { jQuery(".top-line").css("margin-top","-2px"); }

    isZoomOn = false;
}

/*
 * Displays the normally hidden video box element & loads the Flash *.flv video file into it, playing
 * the video
 * @param prodId The product ID used in the path to the product's *.flv file
 */
function showVideo(prodId) {
    if (isZoomOn) {
		removeZoom();
    }

    if (!isVideoOn) {
        // See if the video has not been loaded yet (i.e. this is the first view video request since the page loaded)
        // GH 19/12/08: Including this logic to save reloading the product video into the swf object makes the video
        // not play more than once for any page load for some reason
        // if (!videoHasBeenLoaded) {
            // Set any additional Flash swing object variables - in this case the product ID, required for the path to the *.flv file
            var flashvars = [];
            flashvars.prodID = prodId;

            // Load the video into the swing object & set that is has been
            swfobject.embedSWF("/images/flash/productVideo.swf", "prod-page-video", "390", "412", "9.0.0", null, flashvars);
            videoHasBeenLoaded = true;
        // }

		jQuery("#video-box").css("visibility","visible");
		jQuery("#video-box object").css("visibility","visible");
		jQuery("#product-details h1 a").css("visibility","hidden");
        jQuery("#tabbed-info").css("visibility","hidden");
        jQuery("#tabbed-info *").css("visibility","hidden");

        //  Set that the video is on
        isVideoOn = true;
    }
}

function hideVideo() {

	jQuery("#video-box").css("visibility","hidden");
	jQuery("#video-box object").css("visibility","hidden");
	jQuery("#product-details h1 a").css("visibility","visible");
	jQuery("#tabbed-info").css("visibility","visible");
	jQuery("#tabbed-info *").css("visibility","visible");

	isVideoOn = false;
}

/**
 * Used by SizeChart duplicated in Outnet global-outnet.js
 */
function showtab(tabname, pagename) {
    jQuery(".tabButton").removeClass("selected");
    jQuery(".tabBody").hide();

    //set target tab as selected
    jQuery("#" + tabname).addClass("selected");

    // Show the selected tab
    jQuery("#" + pagename).show();
}

//// Fix for loading large images from cache
///  cache_url added at the beginig of the second parameter in launchNamePopUp function
///  Pawel
function prepViewLargeImageLink(product_id, image_type, cache_url) {
    var fullsize_link = document.getElementById('full-size-image-link');
    if (fullsize_link != null) {
        fullsize_link.onclick = function() {
            launchNamePopUp('imgL', '/' + channel + '/ViewFullSizeImage.ice?productID=' + product_id + '&currentImage=' + image_type, 580,760);
        };
    }
}

/// Fix for loading big image from cache
/// now loadBig axepting 4 parameters which are passed from jsp
/// third one passed from the jsp is empty string there for not passing anythig into loadBig function
/// cache_url will containg correct string
/// ~ Pawel

function loadBig(img, prodId, emptyString, cache_url) {
    if (cache_url == undefined) {
		cache_url = "http://cache.net-a-porter.com";
	}

    prepViewLargeImageLink(prodId, img, cache_url);
    var large_image_url = cache_url + '/images/products/' + prodId + '/' + img + '_l.jpg';
    document.getElementById("medium-image").src = large_image_url;

	var str= "http://cachexl.net-a-porter.com";
    loadZoomImage(img,prodId,str);

	if(images && images.length > productPageMaxVisible) moveUp(this);
}

function loadZoomImage(img,prodId,str) {
	document.getElementById("zoom-image").src = str + '/images/products/' + prodId + '/' + img + '_xl.jpg';
}

function clearIntrv() {
	clearTimeout(hideInterval);
}

function hideBig() {
	hideInterval = setTimeout("hideDelay()", 250);
}

function hideDelay() {
	if (isZoomOn) {
        if (!isVideoOn) {
			jQuery("#zoom-box").css("visibility","hidden");
			jQuery("#zoom-image").css("visibility","hidden");
			jQuery("#zoomWindowBox").css("visibility","hidden");
			jQuery("#product-details h1 a").css("visibility","visible");
			jQuery("#tabbed-info").css("visibility","visible");
			jQuery("#tabbed-info *").css("visibility","visible");
			if(isIE6) { jQuery(".top-line").css("margin-top","-2px"); }

            clearInterval (zoomInterval);
        }
        isZoomOn = false;
	}
}

function hideBigBox() {
	setVisibilityById('zoom-image', false);
}

//zoom function
function animateBigImage() {
	var xPos =  mouseX,
		yPos =  mouseY,
		bigXPos = jQuery('#zoom-image').offset().left,
		bigYPos = jQuery('#zoom-image').offset().top;

	//X and Y coordinates of the normal sized product image
	//from the page corner
	var largeXOffset = jQuery('#medium-image').offset().left,
		largeYOffset = jQuery('#medium-image').offset().top;

    var mediumImageWidth = document.getElementById('medium-image').offsetWidth,
    	mediumImageHeight = document.getElementById('medium-image').offsetHeight;

    /*
     * Work out if the cursor is within some custom bounds of the product image. If it is, then
     * stop animating.
     */
    if(xPos < (largeXOffset - productImageMarginSides) ||
       xPos > (largeXOffset + mediumImageWidth + productImageMarginSides) ||
       yPos < (largeYOffset - productImageMarginTop) ||
       yPos > (largeYOffset + mediumImageHeight + productImageMarginBottom))
    {
        hideBig();
        return;
    }

	//var bigXPos = document.getElementById('zoom-image').offsetLeft;
	//var bigYPos = document.getElementById('zoom-image').offsetTop;

	factorX = (bigWidth- bigBoxWidth)/smallWidth;
	factorY = (bigHeight-bigBoxHeight)/smallHeight;

	var targetX = 0 - (factorX * (xPos-largeXOffset)),
		targetY = 0 - (factorY * (yPos-largeYOffset));

	targetX = Math.round(targetX);
	targetY = Math.round(targetY);

	bigX +=  ((targetX-bigX)*easing);
	bigY +=  ((targetY-bigY)*easing);

	bigY = Math.round(bigY);
	bigX = Math.round(bigX);

	document.getElementById("zoom-image").style.left  = bigX + 'px';
	document.getElementById("zoom-image").style.top = bigY + 'px';

	//X and Y coordinates of the zoom box from the page corner
	var bigBoxXOffset = jQuery('#zoom-box').offset().left,
		bigBoxYOffset = jQuery('#zoom-box').offset().top;

	//X and Y coordinates of the extra large product image from the page corner
	var zoomImageXOffset = jQuery('#zoom-image').offset().left,
		zoomImageYOffset = jQuery('#zoom-image').offset().top;

	//Work out where zoom-box is in relation to the extra large zoom image.
	//Apply the zoom ratio to work out where our small box which shows where
	//you are zooming should be located in relation to the normal sized product image
	var windowBoxXOffset = (bigBoxXOffset - zoomImageXOffset) * zoomRatio,
		windowBoxYOffset = (bigBoxYOffset - zoomImageYOffset) * zoomRatio;

	//Add the X and Y coordinates  of the normal sized image to get the X and Y
	//coordinates for the small box in relation to the page corner.
	windowBoxXOffset += largeXOffset;
	windowBoxYOffset += largeYOffset;

	//Make sure our X and Y coordinates are integers.
	windowBoxXOffset = Math.round(windowBoxXOffset);
	windowBoxYOffset = Math.round(windowBoxYOffset);

	//Set the coordinates for the small box which shows where
	//you are zooming
	document.getElementById('zoomWindowBox').style.left  = windowBoxXOffset + 'px';
	document.getElementById('zoomWindowBox').style.top  = windowBoxYOffset  + 'px';
}

//scroll fucntionality

function countElements(container_id, tag) {
	var container = document.getElementById(container_id);
	var elem_count = container.getElementsByTagName(tag).length;
	return elem_count;
}

function moveDown(e) {
	if(!animating) {
	  if (idc>0) {
		  idc--;
	  } else {
		  idc=images.length-1;
	  }
	  var tempPoss = thumbsPos.shift();
	  thumbsPos.push(tempPoss);
	  images[idc].style.top = -92+'px';

	  animating = true;
	  for(var d=0;d<images.length;d++) {
		  jQuery(images[d]).animate({
			top: thumbsPos[d]
		  }, 300, function() {
			animating = false;
		  });
	  }
	}
}

//move thumbnails up
function moveUp(e) {
	if(!animating) {
	  if(images[idc].id.offsetTop < 3) {
		  images[idc].id.style.top = 368+'px';
	  }

	  if(idc<imgAmount) {
		  idc++;
	  }
	  else {
		  idc=0;
	  }

	  var tempPos = thumbsPos.pop();
	  thumbsPos.unshift(tempPos);

	  animating = true;
	  for(var d=0;d<images.length;d++) {
		jQuery(images[d]).animate({
		  top: thumbsPos[d]
		}, 300, function() {
		  animating = false;
		});
	  }
	}
}

// ADDED BY ANDY FROM INLINE ON 8th FEB
function openSignUp() {
	if (validateEmail()) {
		var url = '/' + channel + '/Content.ice?page=Sign-Up-For-Fashion-News&pgForward=popup' + '&email=' + document.getElementById('email').value;
        open(url,'SignupForFashionNews','width=700,height=500');
        var tmp = open(url,'SignupForFashionNews','width=700,height=500');
		tmp.focus();
	}
	return false;
}

function clearDefault(el) {
	if (el.defaultValue==el.value) { el.value = ""; }
}

function jsubmit() {
	if (validate())
	{
		document.emailreg.submit();
	}
}

function validate() {
	if(!isGoodEmail(document.emailreg.email.value)) {
		alert("Please make sure that you\ninput a valid e-mail address");
		document.emailreg.email.focus();
		return false;
	}
	return true;
}

function validateEmail() {
	if(!isGoodEmail(document.emailreg.email.value, false)) {
		alert("Please make sure that you\ninput a valid e-mail address");
		document.emailreg.email.focus();
		return false;
	}
	return true;
}

function isGoodEmail(emailStr, thankyouflag) {
	if (thankyouflag == null) {
		thankyouflag=true;
	}
	var emailPat=/^(.+)@(.+)$/,
		specialChars="\\(\\)<>@,;:\!\\\\\\\"\\.\\[\\]",
		validChars="\[^\\s" + specialChars + "\]",
		firstChars=validChars,
		quotedUser="(\"[^\"]*\")",
		ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/,
		atom="(" + firstChars + validChars + "*" + ")",
		word="(" + atom + "|" + quotedUser + ")",
		userPat=new RegExp("^" + word + "(\\." + word + ")*$"),
		domainPat=new RegExp("^" + atom + "(\\." + atom +")*$"),
		matchArray=emailStr.match(emailPat);

	if (matchArray==null) {
		return false;
	}
	var user=matchArray[1],
		domain=matchArray[2];

	// See if "user" is valid
	if (user.match(userPat)==null) {
		return false;
	}

	var IPArray=domain.match(ipDomainPat);
	if (IPArray!=null) {
		// this is an IP address
		for (var i=1;i<=4;i++)
		{
			if(IPArray[i]>255)
			{
				return false;
			}
		}
		return true;
	}

	// Domain is symbolic name
	var domainArray=domain.match(domainPat);
	if (domainArray==null) {
		return false;
	}
	var atomPat=new RegExp(atom,"g"),
		domArr=domain.match(atomPat),
		len=domArr.length;

	if(domArr[domArr.length-1].length<2 || domArr[domArr.length-1].length>3) {
	   // the address must end in a two letter or three letter word.
	   return false;
	}
	if (domArr[domArr.length-1].length==3 && len<2) {
	   return false;
	}

	// default behavior - keep existing uses continue to work
	if(thankyouflag) {
	// Everything's valid:
	   window.open('Thank You', 'newFormWindow', 'width=340,height=260');
	}
	return true;
}

var rollover_state_re = /\/images\/issues.*(_on|_off)\.(gif|jpg)$/;

function rolloverimage_handler() {
	var ON = '_on';  var OFF = '_off'; var SUFFIX = '.';
	if (rollover_state_re.test(this.src)) {
		this.src = this.src.replace(RegExp.$1 + SUFFIX, (RegExp.$1==ON?OFF:ON)  + SUFFIX);
	}
	/* else, by convention, do nothing */
}

function rolloverimage_setup() {
	for(var i=0; i<document.images.length; i++) {
		var img = document.images[i];
		if (rollover_state_re.test(img.src)) {
			img.onmouseover = rolloverimage_handler;
			img.onmouseout = rolloverimage_handler;
		}
	}
}

function s(o,f) {
	eval ("document."+o+".src= "+f+".src;");
}

function csoon() {
	launchNamePopUp('csoon', 'http://www.net-a-porter.com/popups/comingsoon.html', 340, 110);
}

function msg(a) {
	if(a==1) {
		csoon();
	}
	else {
		launchNamePopUp('soldout', 'http://www.net-a-porter.com/popups/soldout.html', 340, 260);
	}
}

function stay() {
  // does nothing. What is this for?
}

///////////////////////////////////////////////////////////
//above are old functions kept for backwards compatibility.
//please add new global functions below. ta.
///////////////////////////////////////////////////////////
var dom,ns,ie;

if (document.getElementById) {
	dom = 1;
}
else if (document.layers) {
	nn = 1;
}
else if (document.all) {
	ie = 1;
}

/*
 * Overwritten: use setVisibilityById method instead
 */
function set_visible(div, value) {
	var ref;
	if(dom == 1) {
		ref = document.getElementById(div).style;
	}
    // GH 19/12/08: Supports IE 4 which we shouldn't need to anymore
	else if(ie == 1) {
		ref = eval('document.all.div.style');
	}
    // GH 19/12/08: Supports Netscape 4 which we shouldn't need to anymore
	else if(nn == 1) {
		ref = eval('document.layers[div]');
	}
	ref.visibility = value;
}

function image_swap(layer, id, newpic) {
	if (dom || ie) {
		eval ("document."+id+".src = "+newpic+".src;");
	}
	else if (nn) {
		eval("document.layers['" + layer + "'].document.images['" + id  +"'].src = " + newpic + ".src");
	}
}

function switchClass(which,what) {
	if (!document.layers) {
		if (document.all) {
			switchObj = eval('document.all.' + which + '');
		}
		else {
			switchObj = document.getElementById(''+which+'');
		}
		switchObj.className = what;
	}
}

// custom object
function product_info(designer, status) {
	this.designer = designer;
	this.status = status;
}

var product = [];

function clickOn(sku) {
	var _sku = '_'+sku,
		status = product[_sku].status;

    // Register interest
    if (!status || status == "none" ) {
		ri(product[_sku].designer, sku);

    // Sold out
    } else if (status == 3) {
		launchNamePopUp('soldout', '/' + channel + '/Content.ice?page=Sold-Out&pgForward=popup',280,210);

    // In stock or prepay
    } else {
        // Go to the product page
		window.location.href = "/product/" + sku;
	}
}

var ri_subdir = "",
	Collection_ID = "";

function ri(designer,sku) {
    itemEmailUpdate(sku);
/*
	designer = designer.toLowerCase();
	var url = '/' + channel + '/Content.ice?page=RegisterInterest&pgForward=popup&designer=' + designer + '&sku=' + sku;
	if (sku == null) {
		url = '/' + channel + '/Content.ice?page=RegisterInterest&pgForward=popup&designer=' + designer + '&sku=' + Collection_ID + '&collection=1';
	}
	if (ri_subdir != null && ri_subdir != "") {
		url += '&subdir='+ri_subdir;
	}
	launchNamePopUp('ri', url, 320, 320);
*/
}

function designerri(designer,sku) {
	designer = designer.toLowerCase();
	var url = '/' + channel + '/Content.ice?page=DesignerRegisterInterest&pgForward=popup&designer=' + designer;
	if (sku == null) {
		url = '/' + channel + '/Content.ice?page=DesignerRegisterInterest&pgForward=popup&designer=' + designer;
	}
	if (ri_subdir != null && ri_subdir != "") {
		url += "&subdir=" + ri_subdir;
	}
	launchNamePopUp('des_ri', url, 320, 300);
}

// generate instock|soldout|prepay|(none) tags
function show_instock_tags() {
	var string="";
	for (var _id in product) {
		var sku = _id.replace(/_(\d+).*/,"$1");
		var id = _id.replace(/^_/,"");
		var instock_tag = product[_id].status;
		if(product[_id].status == 0 || product[_id].status == "" || product[_id].status == "none") {
			continue;
		}

		switch (product[_id].status) {
			case 1: instock_tag = "instock"; break;
			case 3: instock_tag = "soldout"; break;
			case 2: instock_tag = "prepay";  break;
		}
		string += "<div id=\"instock" +id+ "\">\n" +
                "<a href=\"javascript:clickOn("+sku+")\" onmouseover=\"switchClass('link"+id+"','black')\" onmouseout=\"switchClass('link"+id+"','a')\"><img src=\"/i/nav_elements/" +instock_tag+ ".gif\" border=0 alt=\"\"></a>\n" +
                "</div>\n";
   }
   document.write(string);
}

if (top.tempo == null) { top.tempo = {}; }

function save(id, val) {
	if (val!=null) { top.tempo[id] = val; }
}

function restore(id) {
	return (top.tempo[id]!=null)?top.tempo[id]:null;
}

function clear(id) {
	if (top.tempo[id]!=null) { top.tempo[id] = null; }
}

//The base class for launching a pop-up, which should
//be called by all other pop-up launching functions
//NB: incScroll should be 1/yes or 0/no.
function launchGenericPopUp(winName, url, w, h, incScroll) {
	var newWindow = window.open(url, winName, 'width='+w+',height='+h+',menubar=no,location=no,resizable=1,status=no,scrollbars='+incScroll);
	if (window.focus) {
		newWindow.focus();
	}
}

//The following are wrappers to the above launchGenericPopUp.
//launchGenericPopup isn't called directly and is instead
//called via one of the following 4 methods.
function launchNamePopUp(name, url, w, h) {
	launchGenericPopUp(name, url, w, h, 1);
}

function launchNamePopUpNoScroll(name, url, w, h) {
	launchGenericPopUp(name, url, w, h, 0);
}

// launchPopUp: Has to be kept as it is used directly
// in the JSPs. Use launchNamePopUp from now on.
function launchPopUp(url, w, h) {
	launchNamePopUp('NAP_pop', url, w, h);
}

// launchPopUpNoScrolls: As with launchPopUp above
function launchPopUpNoScrolls(url, w, h) {
	launchNamePopUpNoScroll('NAP_pop_noscr', url, w, h);
}

function help(url) {
	launchNamePopUp('NAPHelp', url, 670, 540);
}

// function to handle mouse actions, added by AJ 30-10-2006
function mouseAction(state, image) {
	rollOverDiv			= "div" + image.name;
	rollOverImageName	= image.name ;
	rollOverImage		= "";
	if (state == "on") {
		rollOverImage = image.name + "1";
	}
	else if(state == "off") {
		rollOverImage = image.name + "0";
	}
	image_swap(rollOverDiv,rollOverImageName,rollOverImage);
}

var rollover_state_re = /\/images\/issues.*(_on|_off)\.(gif|jpg)$/;

function rolloverimage_handler() {
	var ON = '_on';  var OFF = '_off'; var SUFFIX = '.';

	if(rollover_state_re.test(this.src)) {
		this.src = this.src.replace(RegExp.$1 + SUFFIX, (RegExp.$1==ON?OFF:ON)  + SUFFIX);

	}
	/* else, by convention, do nothing */
}

function rolloverimage_setup() {
	for(var i=0; i<document.images.length; i++) {
		var img = document.images[i];
		if (rollover_state_re.test(img.src)) {
			img.onmouseover = rolloverimage_handler;
			img.onmouseout = rolloverimage_handler;
		}
	}
}

// Flash Player Version Detection - Rev 1.5
// Detect Client Browser type
// Copyright(c) 2005-2006 Adobe Macromedia Software, LLC. All rights reserved.
var isIE  = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false,
	isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false,
	isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;

function ControlVersion() {
	var version,
		axo,
		e;
	// NOTE : new ActiveXObject(strFoo) throws an exception if strFoo isn't in the registry
	try {
		// version will be set for 7.X or greater players
		axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");
		version = axo.GetVariable("$version");
	}
	catch (e) {
	  // do nothing
	}

	if (!version) {
		try {
			// version will be set for 6.X players only
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");

			// installed player is some revision of 6.0
			// GetVariable("$version") crashes for versions 6.0.22 through 6.0.29,
			// so we have to be careful.

			// default to the first public version
			version = "WIN 6,0,21,0";

			// throws if AllowScripAccess does not exist (introduced in 6.0r47)
			axo.AllowScriptAccess = "always";

			// safe to call for 6.0r47 or greater
			version = axo.GetVariable("$version");
		}
		catch(e) {
		  // do nothing
		}
	}

	if (!version) {
		try {
			// version will be set for 4.X or 5.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = axo.GetVariable("$version");
		}
		catch (e) {
		  // do nothing
		}
	}

	if(!version) {
		try {
			// version will be set for 3.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = "WIN 3,0,18,0";
		}
		catch (e){
		  // do nothing
		}
	}

	if (!version) {
		try {
			// version will be set for 2.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
			version = "WIN 2,0,0,11";
		}
		catch (e) {
			version = -1;
		}
	}

	return version;
}

// JavaScript helper required to detect Flash Player PlugIn version information
function GetSwfVer() {
	// NS/Opera version >= 3 check for Flash plugin in plugin array
	var flashVer = -1;

	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
			var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
			var descArray = flashDescription.split(" ");
			var tempArrayMajor = descArray[2].split(".");
			var versionMajor = tempArrayMajor[0];
			var versionMinor = tempArrayMajor[1];
			if ( descArray[3] != "" ) {
				var tempArrayMinor = descArray[3].split("r");
			} else {
				var tempArrayMinor = descArray[4].split("r");
			}
			var versionRevision = tempArrayMinor[1] > 0 ? tempArrayMinor[1] : 0;
			var flashVer = versionMajor + "." + versionMinor + "." + versionRevision;
		}
	}
	// MSN/WebTV 2.6 supports Flash 4
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) { flashVer = 4; }
	// WebTV 2.5 supports Flash 3
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) { flashVer = 3; }
	// older WebTV supports Flash 2
	else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) { flashVer = 2; }
	else if ( isIE && isWin && !isOpera ) {
		flashVer = ControlVersion();
	}
	return flashVer;
}

// When called with reqMajorVer, reqMinorVer, reqRevision returns true if that version or greater is available
function DetectFlashVer(reqMajorVer, reqMinorVer, reqRevision) {
	versionStr = GetSwfVer();
	if (versionStr == -1 ) {
		return false;
	}
	else if (versionStr != 0) {
		if(isIE && isWin && !isOpera) {
			// Given "WIN 2,0,0,11"
			tempArray         = versionStr.split(" "); 	// ["WIN", "2,0,0,11"]
			tempString        = tempArray[1];			// "2,0,0,11"
			versionArray      = tempString.split(",");	// ['2', '0', '0', '11']
		}
		else {
			versionArray      = versionStr.split(".");
		}
		var versionMajor      = versionArray[0],
			versionMinor      = versionArray[1],
			versionRevision   = versionArray[2];

        	// is the major.revision >= requested major.revision AND the minor version >= requested minor
		if (versionMajor > parseFloat(reqMajorVer)) {
			return true;
		}
		else if (versionMajor == parseFloat(reqMajorVer)) {
			if (versionMinor > parseFloat(reqMinorVer)) {
				return true;
			}
			else if(versionMinor == parseFloat(reqMinorVer)) {
				if (versionRevision >= parseFloat(reqRevision)) {
					return true;
				}
			}
		}
		return false;
	}
}

function AC_AddExtension(src, ext) {
  if (src.indexOf('?') != -1) {
    return src.replace(/\?/, ext+'?');
  }
  else {
    return src + ext;
  }
}

function AC_Generateobj(objAttrs, params, embedAttrs) {
    var str = '';
    if (isIE && isWin && !isOpera) {
  		str += '<object ';
  		for (var i in objAttrs) {
  			str += i + '="' + objAttrs[i] + '" ';
  		}
  		for (var i in params) {
  			str += '><param name="' + i + '" value="' + params[i] + '" /> ';
		}
		str += '></object>';
    } else {
  		str += '<embed ';
  		for (var i in embedAttrs) {
  			str += i + '="' + embedAttrs[i] + '" ';
  		}
  		str += '> </embed>';
    }

    document.write(str);
}

function AC_FL_RunContent() {
  var ret =
    AC_GetArgs
    (  arguments, ".swf", "movie", "clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
     , "application/x-shockwave-flash"
    );
  AC_Generateobj(ret.objAttrs, ret.params, ret.embedAttrs);
}

function AC_GetArgs(args, ext, srcParamName, classid, mimeType) {
  var ret = new Object();
  ret.embedAttrs = new Object();
  ret.params = new Object();
  ret.objAttrs = new Object();
  for (var i=0; i < args.length; i=i+2) {
    var currArg = args[i].toLowerCase();

    switch (currArg) {
      case "classid":
        break;
      case "pluginspage":
        ret.embedAttrs[args[i]] = args[i+1];
        break;
      case "src":
      case "movie":
        args[i+1] = AC_AddExtension(args[i+1], ext);
        ret.embedAttrs["src"] = args[i+1];
        ret.params[srcParamName] = args[i+1];
        break;
      case "onafterupdate":
      case "onbeforeupdate":
      case "onblur":
      case "oncellchange":
      case "onclick":
      case "ondblClick":
      case "ondrag":
      case "ondragend":
      case "ondragenter":
      case "ondragleave":
      case "ondragover":
      case "ondrop":
      case "onfinish":
      case "onfocus":
      case "onhelp":
      case "onmousedown":
      case "onmouseup":
      case "onmouseover":
      case "onmousemove":
      case "onmouseout":
      case "onkeypress":
      case "onkeydown":
      case "onkeyup":
      case "onload":
      case "onlosecapture":
      case "onpropertychange":
      case "onreadystatechange":
      case "onrowsdelete":
      case "onrowenter":
      case "onrowexit":
      case "onrowsinserted":
      case "onstart":
      case "onscroll":
      case "onbeforeeditfocus":
      case "onactivate":
      case "onbeforedeactivate":
      case "ondeactivate":
      case "type":
      case "codebase":
      case "id":
        ret.objAttrs[args[i]] = args[i+1];
        break;
      case "width":
      case "height":
      case "align":
      case "vspace":
      case "hspace":
      case "class":
      case "title":
      case "accesskey":
      case "name":
      case "tabindex":
        ret.embedAttrs[args[i]] = ret.objAttrs[args[i]] = args[i+1];
        break;
      default:
        ret.embedAttrs[args[i]] = ret.params[args[i]] = args[i+1];
    }
  }
  ret.objAttrs["classid"] = classid;
  if (mimeType) ret.embedAttrs["type"] = mimeType;
  return ret;
}

function uncheckAll() {
	email_prefs.weekly_newsletter.checked = false ;
	email_prefs.sale_special.checked = false ;
}

function toggleOpenClosedById(id) {
    var elem = document.getElementById(id);
    if (elem) {
        // See if the element has a class of 'closed'
        if ((' ' + elem.className + ' ').indexOf(' closed ') != -1) {
            // Replace the 'closed' part of the class with 'open'
            elem.className = elem.className.replace('closed', 'open');
        } else {
            // Replace the 'open' part of the class with 'closed'
            elem.className = elem.className.replace('open', 'closed');
        }
    }
}

function toggleDisplay(id) {
    var elem = document.getElementById(id);
    var disp = elem.style.display;
    if('none' != disp)
    {
        elem.style.display = 'none';
    }
    else
    {
        elem.style.display = 'block'
    }
}

function toggleArrowClass(src) {
    var elem = document.getElementById(src);
    var elemclass = elem.getAttributeNode('class').value;
    //alert(elemclass);
    if('productnav-toggle-rightarrow' == elemclass)
    {
        elem.setAttribute('class','productnav-toggle-downarrow');
        elem.className = 'productnav-toggle-downarrow';
    }
    else if('productnav-toggle-downarrow' == elemclass)
    {
        elem.setAttribute('class','productnav-toggle-rightarrow');
        elem.className = 'productnav-toggle-rightarrow';
    }
}

/*feeder*/
/*
var length = new Number();
var t;
onload = function () {

	var imgWidth = [];
	var img_container = document.getElementById("feeder-container");

	if (img_container) {

		var imgs = img_container.getElementsByTagName("img");
		var zIndex = imgs.length;

		var pos = 0 ;
		var feederInterval;
		for (var index = 0; index < zIndex; index++) {
			imgWidth.push(imgs[index].width);
			length = length + imgWidth[index];
		}

		length = length/2;

		document.getElementById('feeder2').style.left = length + 'px';
		document.getElementById('feeder').style.width = length + 'px';
		document.getElementById('feeder2').style.width = length + 'px';

		startFeeder();
	}
}

stopFeeder = function () {
	clearInterval(feederInterval);
}


startFeeder =function () {
	feederInterval = setInterval(moveFeeder,20);
}

var c=0;
var t;
function timedCount() {
document.getElementById('txt').value=c;
c=c+1;
t=setTimeout("timedCount()",1000);
}

moveFeeder = function () {

	if(document.getElementById('feeder').offsetLeft < -length){
	document.getElementById('feeder').style.left = length + 'px';
	}

	if(document.getElementById('feeder2').offsetLeft < -length){
	document.getElementById('feeder2').style.left = length + 'px';
	}

document.getElementById('feeder').style.left = document.getElementById('feeder').offsetLeft - 1+'px';
document.getElementById('feeder2').style.left = document.getElementById('feeder2').offsetLeft - 1+'px';

}*/

goToLocation = function (url) {
	window.location = url;
}

/*
 * General method for setting an element's visibility, targetted
 * by the element ID, taking care to only attempt it on elements
 * that exist on the page
 * @param id The element id string
 * @param visibility The visibility flag i.e. 0/false=hidden, 1/true=visible
 */
function setVisibilityById(id, visibility) {
    if (document.getElementById(id) != null) {
        if (visibility) {
            document.getElementById(id).style.visibility = 'visible';
        } else {
            document.getElementById(id).style.visibility = 'hidden';
        }
    }
}
// JavaScript Document

// product list images rollovers (added 07/05/09)
var imageTimeout = 0;

function rollOverImage(imageElem, cache_image_url, event) {
	var e = window.event || event;

	function changeImageOver() {
	  imageElem.src = cache_image_url;
	}

	function changeImageOut() {
	  imageElem.src = cache_image_url;
	}

	if(imageElem) {
	  if(e.type == "mouseover") {
		imageTimeout = setTimeout(changeImageOver, 200);
	  } else if(e.type == "mouseout") {
		clearTimeout(imageTimeout);
		changeImageOut();
	  }
    }
}

/*	New Wish List functions
 *	added 20/08/09
 *	Lee Daffen & Paul Le
 */

function submitAddToWishList(listId) {
  document.getElementById("customListId").value = listId;
  document.forms["productForm"].submit();
}

function checkWishListCookie() {

    var domainStr;
    var domainPrefix = "www";
    var domainSuffix = ".net-a-porter.com";

	var subDomainRegExp = /\/\/([a-zA-Z0-9.]+)\.net-a-porter.com/,
	   subDomainMatch = window.parent.location.href.match(subDomainRegExp),
	   subDomain;

	if(subDomainMatch && subDomainMatch.length > 0) {
		domainPrefix = subDomainMatch[1];
        domainStr = domainPrefix + domainSuffix;

	} else {
        // FOR DEV ONLY SO NOT TO DEFAULT URL TO 'WWW'. IF NO MATCH TO 10.3.XXX.XXX (INTERNAL IP)
        // THEN DOMAINSTR WILL BE 'WWW.NET...'
        var ipRegExp = /10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/,
	    ipMatch = window.parent.location.href.match(ipRegExp),
	    ipAddress;

        if (ipMatch && ipMatch.length>0) {
            domainStr = ipMatch[0];

        } else {
		    domainStr = domainPrefix + domainSuffix;
            
        }
	}

  // find the wish list cookie in the document cookie string
  var wishlistCookieValues = {},
	  wishlistCatUrl = "https://"+domainStr+"/"+channel+"/catwishlist.nap",
	  wishlistGridUrl = "https://"+domainStr+"/"+channel+"/gridwishlist.nap",
	  wishlistLiteUrl = "https://"+domainStr+"/"+channel+"/wishlist.nap";

  var _cID1=document.cookie.indexOf("wishlist_settings");
  // return null if it's not there
  if(_cID1==-1) {
	window.parent.location.href = wishlistCatUrl;
  } else {
	var _cID2=document.cookie.indexOf("=",_cID1),
		_cID3=document.cookie.indexOf(";",_cID2);

	if (_cID3==-1) _cID3=document.cookie.length;

	var cookieVal = document.cookie.substring(_cID2+1,_cID3),
		cookieArr = cookieVal.split(","),
		thisPair,
		thisKey,
		thisValue;

	// convert the cookie string into key:value pairs
	for(var key in cookieArr) {
		thisPair = cookieArr[key].split(":");
		thisKey = thisPair[0];
		thisValue = thisPair[1];

		// write this key:value pair to the cookie object
		wishlistCookieValues[thisKey] = thisValue;
	}
  }

  var wishlistView = wishlistCookieValues["view"];

  // change the parent frame's href based on the value 'view' in the wish list cookie
  switch(wishlistView) {
	case "grid":
	  window.parent.location.href = wishlistGridUrl;
	  break;
	case "lite":
	  window.parent.location.href = wishlistLiteUrl;
	  break;
	default:
	  window.parent.location.href = wishlistCatUrl;
  }
}

//Function to validate an email address string

function validateEmailAddress(emailAddress) {
    var pattern = new RegExp(/^(.+)@(.+)$/);
    return pattern.test(emailAddress);
}

//support sending a forgotten password email directly from the sign-in page

function submitForgottenPassword(emailError, url) {
    var emailField = jQuery("#emailaddress");
    if (!validateEmailAddress(emailField.attr("value"))) {
        //remove errors from form first
        jQuery("#signinform ul.error").remove();
        //prepend errors to form
        jQuery('<ul class="error"><li>' + emailError + '</li></ul>').prependTo(jQuery("#signinform"));
    } else {
        //submit the email address to the URL
        window.location.href = url + emailField.attr("value");
    }
}


/* designer updates - November 09 */

jQuery(document).ready(function() {
    try {
        jQuery("#cancel").click(function(){
            document.customerPreferences.reset();
        });
    }
    catch(e){
        // do nothing
    }

    /**
    *
    * Paul Le paul.le@net-a-porter.com
    * Drop down menu for top nav
    *
    */

    var showTimeout,
		hideTimeout;
	jQuery("li.main-menu div").css('visibility', 'hidden');

	jQuery("li.main-menu").hover(function(e) {

		var that = jQuery(this);

		clearTimeout(hideTimeout);

		showTimeout = setTimeout(function () {
			jQuery("li.main-menu div").css('visibility', 'hidden');
			jQuery("li.main-menu").removeClass("hovered");

			var menuID = that.attr("id");
			if (menuID) menuID = menuID.toLowerCase()+"-menu";
			menuID = menuID.replace(/ /, "-");
			jQuery("div#"+menuID+", div#"+menuID+" div").css('visibility', 'visible');

			that.addClass("hovered");

		}, 300);

	}, function(e) {

		hideTimeout = setTimeout(function () {
			jQuery("li.main-menu div").css('visibility', 'hidden');
			jQuery("li.main-menu").removeClass("hovered");

		}, 300);

		clearTimeout(showTimeout);
	});


});

jQuery(document).ready(function() {
    try {
        jQuery("#what-is-this").show();
        jQuery(".instruction").show();
        jQuery("#recaptcha_response_field").show();
        jQuery("#recaptcha-output").show();
        }
    catch(e){
        // do nothing
    }

});

