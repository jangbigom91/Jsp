<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<head>
	<style>
		/* 컨텐츠 내용 */
		.content > div {
		    width: 760px;
		    height: 164px;
		    box-sizing: border-box;
		    background-image: url('../img/sub_page1_article_bg.jpg');
		}
		.content > div > div > ul {
			position: relative;
		    width: 100%;
		    height: 100%;
		    overflow: hidden;
		}
		
		.content > div > div > ul > li {
		  	position: absolute;
			top: 0;
			width: 100%;
			height: 100%;
			overflow: hidden;
		}
		.content > p {
		    font-size: 11px;
		    margin-top: 26px;
		}
		
		.content > div > div > ul > li {left: 0;}
		
		.content > nav {
		    float: right;
		    width: 271px;
		    height: 234px;
		    margin-top: 20px;
		    box-sizing: border-box;
		    background-image: url('../img/sub_page1_article_family.png');
		}
		
		.content > p > span {
		    font-weight: bold;
		    color: rgb(145, 186, 21);
		}
	</style>
</head>
<div id="sub" class="introduction">
    <div>
        <img src="../img/sub_top_tit1.png" alt="INTRODUCTION"/>
    </div>
    <section>
        <aside>
            <img src="../img/sub_aside_cate1_tit.png" alt="팜스토리 소개"/>
            <ul>
                <li class="on"><a href="/Farmstory1/introduction/greeting.jsp">인사말</a></li>
                <li><a href="/Farmstory1/introduction/direction.jsp">찾아오시는길</a></li>
            </ul>
        </aside>
        <article>
            <nav>
                <img src="../img/sub_nav_tit_cate1_tit1.png" alt="인사말"/>
                <p>
                    HOME > 팜스토리소개 > <span>인사말</span>
                </p>
            </nav>
            <div class="content">
                <!-- 컨텐츠 내용 시작 -->
               <div>
					<ul>
						<li><img src="../img/sub_page1_article_txt.png" alt="건강한 먹거리"/></li>
					</ul>
               </div>
               <nav>

               </nav>
               <p>
                            항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며<br />
                            가정에 건강과 행복이 가득하시길 기원합니다.<br />   
              <br />
              <br />
                            팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.<br />
                            보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을<br /> 
                            다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제공에 앞장서겠습니다.<br />

              <br />
              <br />
             	<span>친환경 농장</span><br />
                            팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 제배단지입니다.<br />
              <br />
              <br />
              <span>친환경 캠페인</span><br />
                            팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을<br /> 
                            위해 노력합니다.<br />
              </p>

                <!-- 컨텐츠 내용 끝 -->
            </div>

        </article>
    </section>
</div>
<%@ include file="../_footer.jsp" %>