/**
 * 
 */
function getXMLHttpRequestObject(){
	var ajax = null;
	if(window.XMLHttpRequest){
		ajax = new XMLHttpRequest();
	}else if(window.ActiveXObject){ // 오래된 IE.
		ajax = new ActiveXObject('MSXML2.XMLHTTP.3.0');
	}
	return ajax;
}