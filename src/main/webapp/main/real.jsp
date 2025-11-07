<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
/* 위치 고정 */
.chat-widget {
  position: fixed;
  bottom: 80px;
  right: 20px;
  width: 320px;
  height: 420px;
  border-radius: 12px;
  background: #ffffff;
  box-shadow: 0 6px 20px rgba(50,50,93,0.1);
  overflow: hidden;
  display: flex;
  flex-direction: column;
  font-family: '맑은 고딕', sans-serif;
  z-index: 9999;
}

/* 헤더 */
.chat-header {
  background: linear-gradient(90deg, #FDEFF9 0%, #F7FFF7 100%);
  padding: 10px 14px;
  color: #5C4A72;
  font-weight: 600;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.close-btn {
  background: transparent;
  border: none;
  font-size: 20px;
  color: #8E7CA6;
  cursor: pointer;
}

/* 본문 */
.chat-body {
  flex: 1;
  padding: 12px;
  overflow-y: auto;
  background: #FFFDFE;
}
.chat-messages li {
  margin-bottom: 10px;
  display: flex;
}
.chat-messages .incoming .bubble {
  background: #EAF9F1;
  color: #2E6B5A;
  border-radius: 12px;
  padding: 8px 12px;
  max-width: 80%;
}
.chat-messages .outgoing {
  justify-content: flex-end;
}
.chat-messages .outgoing .bubble {
  background: #FFF4F7;
  color: #7A4A3E;
  border-radius: 12px;
  padding: 8px 12px;
  max-width: 80%;
}

/* 하단 입력 영역 */
.chat-footer {
  padding: 10px;
  background: #F9F9FF;
  border-top: 1px solid #eee;
}
.btn-send {
  background: linear-gradient(180deg,#F4E9FF 0%,#EAD8FF 100%);
  color: #5C3B8A;
  border-radius: 999px;
  font-weight: 600;
}

/* 닫힌 상태의 열기 버튼 */
.chat-open-btn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  width: 60px;
  height: 60px;
  background: linear-gradient(135deg,#FDEFF9,#EAF9F1);
  border: none;
  border-radius: 50%;
  font-size: 24px;
  box-shadow: 0 6px 14px rgba(0,0,0,0.1);
  cursor: pointer;
  display: none;
  z-index: 9999;
}
.chat-open-btn:hover {
  transform: scale(1.05);
}

/* 반응형 */
@media (max-width: 480px) {
  .chat-widget { width: 90%; right: 5%; height: 400px; }
}
</style>
</head>
<body>

</body>
</html>