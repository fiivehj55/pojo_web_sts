<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Daumìëí° - ì´ë¯¸ì§ ì²¨ë¶</title> 
<script src="../../js/popup.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="../../css/popup.css" type="text/css"  charset="utf-8"/>
<script type="text/javascript">
// <![CDATA[
	
	function done() {
		if (typeof(execAttach) == 'undefined') { //Virtual Function
	        return;
	    }
		
		var _mockdata = {
			'imageurl': 'http://cfile284.uf.daum.net/image/116E89154AA4F4E2838948',
			'filename': 'editor_bi.gif',
			'filesize': 640,
			'imagealign': 'C',
			'originalurl': 'http://cfile284.uf.daum.net/original/116E89154AA4F4E2838948',
			'thumburl': 'http://cfile284.uf.daum.net/P150x100/116E89154AA4F4E2838948'
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
	    
	    var _attacher = getAttacher('image', _opener);
	    registerAction(_attacher);
	}
// ]]>
</script>
</head>
<body onload="initUploader();">
<div class="wrapper">
	<div class="header">
		<h1>ì¬ì§ ì²¨ë¶</h1>
	</div>	
	<div class="body">
		<dl class="alert">
		    <dt>ì¬ì§ ì²¨ë¶ íì¸</dt>
		    <dd>
		    	íì¸ì ëë¥´ìë©´ ìì ë°ì´í°ê° ì¬ì§ì²¨ë¶ ë©ëë¤.<br /> 
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