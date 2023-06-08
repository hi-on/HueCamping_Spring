<%@ page contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" type="text/css" href="./css/main.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<jsp:include page="../include/header.jsp" />
<script src="../js/jquery.js"></script>
<script>
 function okcancellist_btn_check(){//등록 버튼 내용 없을 때 경고창
	if($.trim($('#board_title').val())==''){
		 alert('제목을 입력하세요!');
		 $('#board_title').val('').focus();
		 return false;
	}
	if($.trim($('#board_name').val())==''){
		 alert('작성자를 입력하세요!');
		 $('#board_name').val('').focus();
		 return false;
	}
	if($.trim($('#board_pwd').val())==''){
		 alert('비밀번호를 입력하세요!');
		 $('#board_pwd').val('').focus();
		 return false;
	}
	if($.trim($('#board_cont').val())==''){
		 alert('글내용을 입력하세요!');
		 $('#board_cont').val('').focus();
		 return false;
	}
 }
</script>


<div class="-frame">
 <div class="contents">
<!-- 안내바 S -->
  <div id="expath" class="path">
   <ol>
    <li>
     <a href="member_main">Home</a>
    </li>
    <li>
     <a href="productQnA_list">QnA</a>
    </li>
   </ol>
  </div>
<!-- 안내바 E -->

  <div class="guideLink_title">QnA</div>
   <div class="guideMenu">
    <ul class="menucategory">
     <li><a href="noticeCenter_notice.net">공지사항</a></li>
     <li><a href="productQnA_list"><strong style="color: #222;">QnA</strong></a></li>
     <li><a href="FAQ">FAQ</a></li> 
     <li><a href="noticeCenter_review.net">포토후기</a></li>  
    </ul>
   </div>
   
<%-- 본문 --%>
<div class="product_QnA_cont">
<form method="post" action="productQnA_edit_ok?page=${page}" onsubmit="return okcancellist_btn_check();">
 <input type="hidden" name="board_no" value="${prov.board_no}">
 
 <table id="bCont_t">
  <tr>
   <th class="proQnAth" scope="row">제목</th>
   <td><input name="board_title" id="board_title" value="${prov.board_title}" /></td>
  </tr>
  
  <tr>
   <th class="proQnAth" scope="row">글쓴이</th>
   <td><input name="board_name" id="board_name" value="${prov.board_name}" /></td>
  </tr>
  
  <tr>
   <th class="proQnAth" scope="row">비밀번호</th>
   <td><input type="password" name="board_pwd" id="board_pwd" /></td>
  </tr> 
  
  <tr>
   <td class="pro_QnA_contcols" colspan="2">
    <textarea id="board_cont" name="board_cont">${prov.board_cont}</textarea>
   </td>
  </tr>
 </table>

<div class="okcancellist_btn">
 <input class="product_QnA_btn" type="submit" value="수정완료" />
 <input class="product_QnA_btn" type="reset" value="취소" onclick="$('#board_title').focus();"/>
 <input class="product_QnA_btn" type="button" value="목록" onclick="location='productQnA_list?page=${page}';">
</div>
        
</form>
</div>

</div> <!-- content E -->
</div> <!-- frame E -->

<jsp:include page="../include/footer.jsp" />