  <%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
 
	<jsp:include page="layout/header.jsp"></jsp:include>

	<link href="${pageContext.request.contextPath}/resources/vendors/smart_wizard.css" rel="stylesheet" type="text/css">
    
	<script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

<body>
<br><br><br><br>
 <section id="my-profile" class="my-profile-section">
        <div class="container">
            <div class="row">
	<form action="${pageContext.request.contextPath}/registerMemberAction.do" method="post"  enctype="multipart/form-data" id="regForm" class="form-horizontal form-label-left"> 
                    <!-- Smart Wizard -->
            <div id="wizard" class="form_wizard wizard_horizontal">
             <ul class="wizard_steps">
  			  <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>이용약관</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>회원정보</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>회원프로필정보</small>
                                          </span>
                          </a>
                        </li>
                                              
                      </ul>
  			  	<div id="step-1">
  			  		<div class="form-group">
  			  		<br>
  			  		<textarea rows="20" cols="150" class="agrTextarea">TTK 및 TTK 관련 제반 서비스의 이용과 관련하여 필요한 사항을 규정합니다.
제 1조 (목적)
이 약관은 TTK(주)(이하 "회사")가 제공하는 TTK 및 TTK 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
제 2조 (정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
① "서비스"라 함은 구현되는 단말기(PC, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 TTK 및 TTK 관련 제반 서비스를 의미합니다.
② "회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 포괄적으로 의미하며, "정회원"과 "준회원"으로 구분합니다.
③ "아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다. 
④ "비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤ "프로필"이라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하여 “서비스” 내 공개된 본인 소개서를 의미합니다.
제 3조 (약관의 게시와 개정)
① "회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
② "회사"는 이 약관의 내용, 상호, 대표자 성명, 사업자등록번호, 통신판매업 신고번호, 등을 "회원"이 쉽게 알 수 있도록 서비스 초기화면에 게시합니다. 다만, 약관은 "회원"이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
③ "회사"는 "약관의규제에관한법률", "정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 
④ "회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 전자우편, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.
⑤ 회사가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.
⑥ 회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다.
제 4조 (약관의 해석)
이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 "전자상거래등에서의소비자보호에관한법률", "약관의규제에관한법률", 기타 관계법령 또는 상관례에 따릅니다.
제 5조 (이용계약 체결)
① 이용계약은 "회원"이 되고자 하는 자(이하 "가입신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 "회사"가 이러한 신청에 대하여 승낙함으로써 체결됩니다. 
② "회사"는 "가입신청자"의 신청에 대하여 "서비스" 이용을 승낙함을 원칙으로 합니다. 다만, "회사"는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다. 
1. 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 "회사"의 회원 재가입 승낙을 얻은 경우에는 예외로 함. 
2. 실명이 아니거나 타인의 명의를 이용한 경우 
3. 허위의 정보를 기재하거나, "회사"가 제시하는 내용을 기재하지 않은 경우 
4. 「아동·청소년의 성보호에 관한 법률」에 따른 아동·청소년 및 「청소년보호법」에 따른 청소년: 19세 미만의 자. 다만, 19세에 도달하는 해의 1월 1일을 맞이한 자는 제외함(「아동·청소년의 성보호에 관한 법률」 제2조제1호 및 「청소년보호법」 제2조제1호).
5. 19세 미만의 자. 다만, 19세에 도달하는 해의 1월 1일을 맞이한 자와 다음 해의 3월 1일 전에 19세가 되는 자는 제외함.
6. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우
7. 금치산자 및 그에 해당하는 자
8. 기타 회사의 여건상 이용승낙이 곤란하거나 가입결격 사유에 해당한 자
③ 제1항에 따른 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다. 
④ "회사"는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다. 
⑤ 제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, "회사"는 원칙적으로 이를 가입신청자에게 알리도록 합니다.
⑥ 이용계약의 성립 시기는 "회사"가 가입완료를 신청절차 상에서 표시한 시점으로 합니다. 
⑦ "회사"는 "회원"에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다. 
⑧ "회사"는 "회원"에 대하여 "청소년보호법"등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.
⑨ "회사"는 "정회원"이 “안전동행” 서비스 내의 상호간에 "동의"를 체크함으로써 상대방의 개인 정보를 확인할 수 있도록 합니다.
제 6조 (회원정보의 변경)
① "회원"은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 주민등록번호 등은 수정이 불가능합니다. 
② "회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다. 
③ 제 2항의 변경사항을 "회사"에 알리지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다. 
제 7조 (개인정보보호 의무)
"회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보취급방침이 적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보취급방침이 적용되지 않습니다.
제 8조 ("회원"의 "아이디" 및 "비밀번호"의 관리에 대한 의무)
① "회원"의 "아이디"와 "비밀번호"에 관한 관리책임은 "회원"에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다. 
② "회사"는 "회원"의 "아이디"가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 "회사" 및 "회사"의 운영자로 오인한 우려가 있는 경우, 해당 "아이디"의 이용을 제한할 수 있습니다. 
③ "회원"은 "아이디" 및 "비밀번호"가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다. 
④ 제 3항의 경우에 해당 "회원"이 "회사"에 그 사실을 통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.
제 9조 ("회원"에 대한 통지)
① "회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 전자우편주소, 서비스내 웹페이지 등으로 할 수 있습니다. 
② "회사"는 "회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.
제 10조 ("회사"의 의무)
① "회사"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다. 
② "회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.
제 11조 ("회원"의 의무)
① "회원"은 다음 행위를 하여서는 안 됩니다. 
1. 신청 또는 변경 시 허위내용의 등록 
2. 타인의 정보도용 
3. "회사"가 게시한 정보의 변경 
4. "회사"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시 
5. "회사"와 기타 제3자의 저작권 등 지적재산권에 대한 침해 
6. "회사" 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "서비스"에 공개 또는 게시하는 행위 
8. 일체의 개인 연락처 정보 (E-mail, 블로그, 미니홈피, 전화번호, 휴대폰번호 등)를 "서비스"에 공개 또는 게시하는 행위 
9. 회사의 동의 없이 영리를 목적으로 "서비스"를 사용하는 행위
10. 제3자에게 아이디 또는 회원의 권한을 판매 및 양도하는 행위
11. 타인의 정보(키워드, 사진, 이름, 연락처, 등)를 외부로 유출하는 행위
12. 기타 불법적이거나 부당한 행위 
② 제 1항 각 호에 해당 사항에 명시한 내용을 위반한 회원은 강제 탈퇴 처리 될 수 있으며, 피해 발생시 민형사상의 책임을 지게 됩니다. ③ "회원"은 관계법, 이 약관의 규정, 이용안내 및 "서비스"와 관련하여 공지한 주의사항, "회사"가 통지하는 사항 등을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 하여서는 안 됩니다.
제 12조 ("서비스"의 제공 등)
① "회사"는 "회원"에게 아래와 같은 서비스를 제공합니다. 
1. TTK 서비스
2. 기타 "회사"가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스 
② "회사"는 "서비스"를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있습니다. 다만, 이러한 경우에는 그 내용을 사전에 공지합니다.
③ "서비스"는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다. 
④ "회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우 "회사"는 제9조["회원"에 대한 통지]에 정한 방법으로 "회원"에게 통지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다. 
⑤ "회사"는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.
제 13조 ("서비스"의 변경)
① "회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다. 
② "서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야 합니다. 
③ "회사"는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 "회원"에게 별도의 보상을 하지 않습니다. 
④ "회사"는 "유료서비스"의 변경된 내용이 중대하거나 "회원"에게 불리한 경우에는 "회사"가 해당 "유료서비스"를 제공받는 "회원"에게 제7조["회원"에 대한 통지]에 정한 방법으로 통지합니다. 이때, "회사"는 동의를 거절한 "회원"에 대하여는 변경 전 서비스를 제공합니다. 다만, 그러한 서비스 제공이 불가능할 경우 해당 서비스의 제공을 중지하거나 계약을 해지할 수 있습니다. 이 경우 환불 등은 제25조에 따라 진행됩니다.
제 14조 (정보의 제공)
① "회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만, "회원"은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.
② 제 1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 "회원"의 사전 동의를 받아서 전송합니다. 다만, "회원"의 거래관련 정보, 고객문의 및 "안전동행" 진행상황 등에 대한 회신에 있어서는 제외됩니다.
제 15조 ("프로필"의 저작권)
① "회원"이 "서비스" 내에 게시한 "프로필"의 저작권은 해당 프로필의 저작자에게 귀속됩니다. ② "회사"는 "회원"의 "프로필"을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 "회원"의 동의를 얻어야 합니다. 단, TTK 홈페이지에서 “회원"의 “프로필” 사용은 동의한 것으로 간주합니다.
제 16조 ("프로필"의 관리)
① "회원"의 "프로필"이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "프로필"의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 합니다. 
② "회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "프로필"에 대해 임시조치 등을 취할 수 있습니다.
제 17조 (권리의 귀속)
① "서비스"에 대한 저작권 및 지적재산권은 "회사"에 귀속됩니다. 단, "회원"의 "프로필" 및 제휴계약에 따라 제공된 저작물 등은 제외합니다. 
② "회사"는 서비스와 관련하여 "회원"에게 "회사"가 정한 이용조건에 따라 계정, "아이디", 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, "회원"은 이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다.
제 18조 (계약해제, 해지 등)
① "회원"은 언제든지 "회원정보수정" 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 처리하여야 합니다. 
② "회원"이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 후 24시간 내에 "회원"의 모든 데이터는 소멸됩니다. 단, “회원” 간 개인 정보가 공개된 적이 있는 경우 30일 내에 “회원”의 모든 데이터를 소멸합니다.
제 19조 (이용제한 등)
① "회사"는 "회원"이 이 약관의 의무를 위반하거나 "서비스"의 정상적인 운영을 방해한 경우, 일시정지, 영구이용정지 등으로 "서비스" 이용을 단계적으로 제한할 수 있습니다. 
② "회사"는 전항에도 불구하고, "주민등록법"을 위반한 명의도용 및 결제도용, "저작권법" 및 "컴퓨터프로그램보호법"을 위반한 불법프로그램의 제공 및 운영방해, "정보통신망법"을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있습니다. 본 항에 따른 영구이용정지 시 "서비스" 이용을 통해 획득한 내용 (“유료서비스”의 아이템 포함) 들도 모두 소멸되며, "회사"는 이에 대해 별도로 보상하지 않습니다. 
③ "회사"는 "회원"이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다. 
④ "회사"는 본 조의 이용제한 범위 내에서 제한의 조건 및 세부내용은 이용제한정책 및 개별 서비스상의 운영정책에서 정하는 바에 의합니다. 
⑤ 본 조에 따라 "서비스" 이용을 제한하거나 계약을 해지하는 경우에는 "회사"는 제9조["회원"에 대한 통지]에 따라 통지합니다.
⑥ "회원"은 본 조에 따른 이용제한 등에 대해 "회사"가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 "회사"가 인정하는 경우 "회사"는 "서비스"의 이용을 재개합니다.
제 20 조 (준거법 및 재판관할) 
① "회사"와 "회원" 간 제기된 소송은 대한민국법을 준거법으로 합니다. 
② "회사"와 "회원" 간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다.</textarea>

                          <div class="agrRadio" >
                              <input type="radio"  name="agree" value="1"> 동의합니다.  &nbsp;&nbsp;&nbsp;
                              <input type="radio"  name="agree" value="0"> 동의하지 않습니다.
                              <span id="msg_agree"></span>
                          </div>				
                            
  			  	
  			  </div>
  			  <br>
  			  	</div>
  			  
  			  		<div id="step-2"><br><br><br>
						<div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">아이디 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="id" name="id" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="msg_id"></span><input type="hidden" id="idCheck" value="">
                          </div>
                          <div class="form-group">
                            <label for="password" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <input id="password" type="password" name="password" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_password"></span>
                          </div>
                           <div class="form-group">
                            <label for="cpassword" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호확인 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                              <input type="password" id="cpassword" name="cpassword" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_cpassword"></span>
                          </div>    
   
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">이름 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="name" name="name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="msg_name"></span>
                          </div>
	                     <div class="form-group">
                   	     <label class="control-label col-md-3 col-sm-3 col-xs-3">핸드폰번호<span class="required">*</span></label>
                        	<div class="col-md-2">
                          <input type="text" id="tel" name="tel"class="form-control">
                      	  </div> 
                      	  <span id="msg_tel"></span>                    
	                      </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">성별<span class="required">*</span></label>
                            <div class="col-md-2">
                              <div id="sex" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="sex" value="1"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="sex" value="2"> Female
                                </label>
                              </div>
                            </div>
                            <span id="msg_sex"></span>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">나이<span class="required">*</span>
                            </label>
                            <div class="col-md-1">
                              <input type="number" id="age" name="age" class="form-control" >
                            </div>
                           <span id="msg_age"></span>
                          </div>
                          
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">거주지역</label>
                        <div class="col-md-3 col-sm-9 col-xs-12">
                          <select class="select2_group form-control" name="address">
                            <optgroup label="특별시">
                              <option value="서울시">서울시</option>
                            </optgroup>
                            <optgroup label="광역시">
                              <option value="부산시">부산시</option>
                              <option value="대구시">대구시</option>
                              <option value="인천시">인천시</option>
                              <option value="광주시">광주시</option>
                              <option value="대전시">대전시</option>
                              <option value="울산시">울산시</option>
                            </optgroup>
                            <optgroup label="도">
                              <option value="경기도">경기도</option>
                              <option value="강원도">강원도</option>
                              <option value="충청북도">충청북도</option>
                              <option value="충청남도">충청남도</option>
                              <option value="전라북도">전라북도</option>
                              <option value="전라남도">전라남도</option>
                              <option value="경상북도">경상북도</option>
                              <option value="경상남도">경상남도</option>
                            </optgroup>
                            <optgroup label="특별자치시">
                              <option value="세종시">세종시</option>
                            </optgroup>
                            <optgroup label="특별자치도">
                              <option value="제주도">제주도</option>
                            </optgroup>
                          </select>
                        </div>
                      </div> 
                      </div>
                      <div id="step-3"><br><br><br>
 				<div class="form-group">
                          <label for="introduce" class="control-label col-md-3 col-sm-3 col-xs-12">자기소개 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-12 col-xs-12">
                          <textarea id="introduce" required="required" class="form-control " name="introduce" ></textarea>
                          </div>
                          <span id="msg_introduce"></span>
					</div>                      
                     <div class="form-group">
                          <label for="profileimg" class="control-label col-md-3 col-sm-3 col-xs-12">프로필 사진 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-3 col-xs-12" >
                           <input type="file" name="uploadFile"  id="uploadFile" required="required">
                         </div>
                          <span id="msg_uploadFile"></span>
					</div>					
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">검색공개범위 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-3 col-xs-12" >
                              <input type="radio"  checked name="range" value="1"> 전체공개 &nbsp;&nbsp;&nbsp;
                              <input type="radio"  name="range" value="0"> 비공개
                          </div>				
                            <span id="msg_range"></span>
                          </div>
                    </div></div></form></div>
                  
</div></section>

    
	 <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
    <!-- Bootstrap -->
  <!--   <script src="vendors/bootstrap.js"></script> -->
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
<script>
$(":input[name=id]").keyup(function(){
	var id=$(this).val().trim();
		if(id.length<4 || id.length>10){
			$("#msg_id").html("아이디는 4자이상 10자 이하여야 함!").css(
					"color","red");
			$("#idCheck").val("");
			return;
		}
	
	$.ajax({
		type:"POST",
		url:"idcheckAjax.do",				
		data:"id="+id,	
		success:function(data){						
			if(data=="fail"){
			$("#msg_id").html(id+" 사용불가!").css("color","red");
			$("#idCheck").val("");
			}else{						
				$("#msg_id").html(id+" 사용가능!").css(
						"color","blue");		
				$("#idCheck").val(id);
			}					
		}//callback			
	});//ajax
});//keyup
</script>

    <!-- jQuery Smart Wizard -->
    <script>
    $(document).ready(function() {
    	
    	   
    	$('#wizard').smartWizard({transitionEffect:'slideleft',onLeaveStep:leaveAStepCallback,onFinish:onFinishCallback,enableFinishButton:true}); 
        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-default');
        $('.buttonFinish').addClass('btn btn-primary');
    	      function leaveAStepCallback(obj){
    	        var step_num= obj.attr('rel');
    	        return validateSteps(step_num);
    	      }
    	      
    	      function onFinishCallback(){
    	       if(validateAllSteps()){
    	        $('#regForm').submit();
    	       }
    	      }
    			});
    		   
    	    function validateAllSteps(){
    	       var isStepValid = true;
    	       
    	       if(validateStep1() == false){
    	         isStepValid = false;
    	         $('#wizard').smartWizard('setError',{stepnum:1,iserror:true});         
    	       }else{
    	         $('#wizard').smartWizard('setError',{stepnum:1,iserror:false});
    	       }
    	       
    	       if(validateStep2() == false){
    	         isStepValid = false;
    	         $('#wizard').smartWizard('setError',{stepnum:2,iserror:true});         
    	       }else{
    	         $('#wizard').smartWizard('setError',{stepnum:2,iserror:false});
    	       }
    	       
    	       if(validateStep3() == false){
      	         isStepValid = false;
      	         $('#wizard').smartWizard('setError',{stepnum:3,iserror:true});         
      	       }else{
      	         $('#wizard').smartWizard('setError',{stepnum:3,iserror:false});
      	       } 
    	       
    	       if(!isStepValid){
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">에러가 존재합니다. 확인해주세요!</p>');
    	       }
    	              
    	       return isStepValid;
    	    } 	
    			
    			
    			function validateSteps(step){
    			  var isStepValid = true;
    	      // validate step 1
    	      if(step == 1){
    	        if(validateStep1() == false ){
    	          isStepValid = false; 
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">step'+step+ '에서 에러가 존재합니다. 확인해주세요!</p>');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:true});         
    	        }else{
    	          $('#wizard').smartWizard('hideMessage');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:false});
    	        }
    	      }
    	      
    	      // validate step2
    	      if(step == 2){
    	        if(validateStep2() == false ){
    	          isStepValid = false; 
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">step'+step+ '에서 에러가 존재합니다. 확인해주세요!</p>');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:true});         
    	        }else{
    	          $('#wizard').smartWizard('hideMessage');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:false});
    	        }
    	      }
    	      
    	      // validate step3
    	      if(step == 3){
    	        if(validateStep3() == false ){
    	          isStepValid = false; 
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">step'+step+ '에서 에러가 존재합니다. 확인해주세요!</p>');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:true});         
    	        }else{
    	          $('#wizard').smartWizard('hideMessage');
    	          $('#wizard').smartWizard('setError',{stepnum:step,iserror:false});
    	        }
    	      }    	
    	      
    	      return isStepValid;
    	    }
    			
        	
    		function validateStep1(){
          	      var isValid = true;    
            
          	 // Validate range
       	       var agree = $("input[name=agree]:radio:checked");
       	       if(agree.length == 0){
       	         isValid = false;
       	         $('#msg_agree').html('<p class="validate_msg">이용약관 동의 여부를 선택해주세요</p>').show();
       	       }else if(agree.val()==0){
       	    	   isValid = false;
      	         $('#msg_agree').html('<p class="validate_msg">이용약관을 동의해주세요</p>').show();
    			}else{
       	         $('#msg_agree').html('').hide();
       	       } 
          	      return isValid;
          	    }    			
    			
    		function validateStep2(){
    	       var isValid = true; 
    	       
    	       // Validate id
    	       var idCheck = $('#idCheck').val();
    	       if(!idCheck && idCheck.length <= 0){
      	         isValid = false;
      	         $('#msg_id').html('<p class="validate_msg">잘못된 아이디입니다</p>').show();
      	       }else{
      	         $('#msg_id').html('').hide();
      	       }
    	       
    	       // Validate Username
    	       var name = $('#name').val();
    	       if(!name && name.length <= 0){
    	         isValid = false;
    	         $('#msg_name').html('<p class="validate_msg">이름을 입력해주세요</p>').show();
    	       }else{
    	         $('#msg_name').html('').hide();
    	       }
    	       
    	       // validate password
    	       var pw = $('#password').val();
    	       if(!pw && pw.length <= 0){
    	         isValid = false;
    	         $('#msg_password').html('<p class="validate_msg">비밀번호를 입력해주세요</p>').show();         
    	       }else{
    	         $('#msg_password').html('').hide();
    	       }
    	       
    	       // validate confirm password
    	       var cpw = $('#cpassword').val();
    	       if(!cpw && cpw.length <= 0){
    	         isValid = false;
    	         $('#msg_cpassword').html('<p class="validate_msg">비밀번호확인칸을 입력해주세요</p>').show();         
    	       }else{
    	         $('#msg_cpassword').html('').hide();
    	       }  
    	       
    	       // validate password match
    	       if(pw && pw.length > 0 && cpw && cpw.length > 0){
    	         if(pw != cpw){
    	           isValid = false;
    	           $('#msg_cpassword').html('<p class="validate_msg">비밀번호가 일치하지 않습니다</p>').show();            
    	         }else{
    	           $('#msg_cpassword').html('').hide();
    	         }
    	       }
       	    // Validate age
    	       var age = $('#age').val();
    	       if(!age && age.length <= 0){
    	         isValid = false;
    	         $('#msg_age').html('<p class="validate_msg">나이를 입력해주세요</p>').show();
    	       }else{
    	         $('#msg_age').html('').hide();
    	       }
    	    // Validate Tel
    	       var tel = $('#tel').val();
    	       if(!tel && tel.length <= 0){
    	         isValid = false;
    	         $('#msg_tel').html('<p class="validate_msg">전화번호를 입력해주세요</p>').show();
    	       }else if(isNaN(tel)){
      	         isValid = false;
      	         $('#msg_tel').html('<p class="validate_msg">전화번호를 숫자로 입력해주세요</p>').show();
      	       }else{
      	         $('#msg_tel').html('').hide();
      	       }
    	       
       	    // Validate sex
    	       var sex = $("input[name=sex]:radio:checked");
    	       if(sex.length == 0){
    	         isValid = false;
    	         $('#msg_sex').html('<p class="validate_msg">성별을 선택해주세요</p>').show();
    	       }else{
    	         $('#msg_sex').html('').hide();
    	       }
    	       
    	       
    	       return isValid;
    	    }
    	    
    	    function validateStep3(){
    	      var isValid = true;    
         
      	    // Validate introduce
   	       var introduce = $('#introduce').val();
   	       if(!introduce && introduce.length <= 0){
   	         isValid = false;
   	         $('#msg_introduce').html('<p class="validate_msg">자기소개를 입력해주세요</p>').show();
   	       }else{
   	         $('#msg_introduce').html('').hide();
   	       }
     	    // Validate uploadFile
   	       var uploadFile = $('#uploadFile').val();
   	       if(!uploadFile && uploadFile.length <= 0){
   	         isValid = false;
   	         $('#msg_uploadFile').html('<p class="validate_msg">프로필 사진을 업로드해주세요</p>').show();
   	       }else{
   	         $('#msg_uploadFile').html('').hide();
   	       }
   	       
      	    // Validate range
	       var range = $("input[name=range]:radio:checked");
	       if(range.length == 0){
	         isValid = false;
	         $('#msg_range').html('<p class="validate_msg">공개범위를 선택해주세요</p>').show();
	       }else{
	         $('#msg_range').html('').hide();
	       }   	       
    	      return isValid;
    	    }
    </script>
    <!-- /jQuery Smart Wizard -->

    <!-- Select2 -->
    <script>
      $(document).ready(function() {
        $(".select2_group").select2({});
      });
    </script>
    <!-- /Select2 -->
     <!-- Select2 -->
    <script src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>
    
    
<jsp:include page="layout/footer.jsp"></jsp:include>
