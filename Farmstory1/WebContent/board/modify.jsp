<%@page import="kr.co.farmstory1.bean.ArticleBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String group = request.getParameter("group");
	String cate = request.getParameter("cate");
	String asidefile = "./_aside_"+group+".jsp";

	ArticleBean article = (ArticleBean) session.getAttribute("article");
%>

<jsp:include page="<%= asidefile %>">
	<jsp:param value="<%= cate %>" name="cate"/>
</jsp:include>
        <section id="board" class="modify">
            <h3>글수정</h3>
            <article>
                <form action="/Farmstory1/board/modify.jsp">
                	<input type="hidden" name="seq" value=<%= article.getSeq() %> />
                    <table>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" value="<%= article.getTitle() %>" placeholder="제목을 입력하세요."/></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td>
                                <textarea name="content"><%= article.getContent() %></textarea>                                
                            </td>
                        </tr>
                        <tr>
                            <td>첨부</td>
                            <td><input type="file" name="file"/></td>
                        </tr>
                    </table>
                    <div>
                        <a href="/Farmstory1/board/view.jsp?seq=<%= article.getSeq() %>&group=<%= group %>&cate=<%= cate %>" class="btnCancel">취소</a>
                        <input type="submit"  class="btnWrite" value="수정완료">
                    </div>
                </form>
            </article>
        </section>
 <!-- 컨텐츠 내용 끝 -->
    </div>

	</article>
</section>
 <%@ include file="../_footer.jsp" %>