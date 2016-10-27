<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Daumìëí° - íì¼ ì²¨ë¶</title> 
<script src="../../js/popup.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="../../css/popup.css" type="text/css"  charset="utf-8"/>
<script type="text/javascript">
// <![CDATA[
	
	function done() {
		if (typeof(execAttach) == 'undefined') { //Virtual Function
	        return;
	    }
		
		var _mockdata = {
			'attachurl': 'http://cfile297.uf.daum.net/attach/207C8C1B4AA4F5DC01A644',
			'filemime': 'image/gif',
			'filename': 'editor_bi.gif',
			'filesize': 640
		};
		execAttach(_mockdata);
		closeWindow();
	}

	function initUploader(){
	    var _opener = PopupUtil.getOpener();
	    if (!_opener) {
	        alert('ìëª»ë ê²½ë¡ë¡ ì ê·¼íì¨ìµëë¤.');
	        return;
	    }
	    
	    var _attacher = getAttacher('file', _opener);
	    registerAction(_attacher);
	}
	
</script>
</head>
<body onload="initUploader();">
<div class="wrapper">
	<div class="header">
		<h1>íì¼ ì²¨ë¶</h1>
	</div>	
	<div class="body">
		<dl class="alert">
		    <dt>íì¼ ì²¨ë¶ íì¸</dt>
		    <dd>
		    	íì¸ì ëë¥´ìë©´ ìì ë°ì´í°ê° íì¼ì²¨ë¶ ë©ëë¤.<br /> 
				ì¸í°íì´ì¤ë ìì¤ë¥¼ íì¸í´ì£¼ì¸ì.
			</dd>
		</dl>
	</div>
	<div class="footer">
		<p><a href="#" onclick="closeWindow();" title="ë«ê¸°" class="close">ë«ê¸°</a></p>
		<ul>
			<li class="submit"><a href="#" onclick="done();" title="ë±ë¡" class="btnlink">ë±ë¡</a> </li>
			<li class="cancel"><a href="#" onclick="closeWindow();" title="ì·¨ì" class="btnlink">ì·¨ì</a></li>
		</ul>
	</div>
</div>
</body>
</html>
