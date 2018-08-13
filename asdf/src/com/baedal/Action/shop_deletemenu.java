package com.baedal.Action;

import java.io.IOException;
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
import com.baedal.model.shopVO;
import com.baedal.model.smenuVO;

/**
 * Servlet implementation class shop_delete
 */
@WebServlet("/baedal/shop_deleteAction")
public class shop_deletemenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_deletemenu() {
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
		
		String mcode = request.getParameter("mcode");
		long snum = Long.parseLong(request.getParameter("snum"));
		
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		

		sqlSession.delete("shop_delete", mcode);
		sqlSession.commit();
		
		
		shopVO svo = sqlSession.selectOne("shop_updatelist", snum);
		
		
		List<smenuVO> smvo = sqlSession.selectList("shop_menuview", svo.getSname());
		request.setAttribute("smvo", smvo);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("shop_menuSelectResult.jsp");
		rd.forward(request, response);

	}

}
