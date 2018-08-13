package com.baedal.Action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.baedal.config.MybatisManager;
import com.baedal.model.reviewVO;

/**
 * Servlet implementation class shop_ReviewInsert
 */
@WebServlet("/baedal/shop_ReviewupdateAction")
public class shop_Reviewupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_Reviewupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long snum = Long.parseLong(request.getParameter("snum"));
		int reviewnum = Integer.parseInt(request.getParameter("reviewnum"));
		String scontent = request.getParameter("scontent");
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("reviewnum",reviewnum );
		hm.put("scontent",scontent );
				
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		sqlSession.update("reviewUpdate", hm);
		sqlSession.commit();
		
		List<reviewVO> rvo = sqlSession.selectList("shop_Review", snum);
		
		request.setAttribute("rvo",rvo);
		RequestDispatcher rd = request.getRequestDispatcher("shop_reviewResult.jsp");
		rd.forward(request, response);
		
		
		
		
	}

}
