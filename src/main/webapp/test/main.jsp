<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('button').click(function(){
		$.ajax({
			type:'get',
			url:'a.jsp',
			success:function(res)
			{
				$('#print').html(res)
			}
		})
	})
})
</script>
</head>
<body>
  <button>1번</button>
  <button>2번</button>
  <button>3번</button>
  <button>4번</button>
  <div id="print"></div>
</body>
</html>