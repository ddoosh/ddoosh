package com.baedal.Action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.baedal.config.MybatisManager;
import com.baedal.model.shopVO;

/**
 * Servlet implementation class shop_login
 */
@WebServlet("/baedal/shop_loginAction")
public class shop_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_login() {
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
		String sid = request.getParameter("sid");
		String spwd = request.getParameter("spwd");
	
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		
		String tt ="";
		shopVO svo = sqlSession.selectOne("shop_login",sid);
		HttpSession session = request.getSession();

		
		if(spwd.equals(svo.getSpwd())) {
			session.setAttribute("snum", svo.getSnum());
			tt="shop_main.jsp";
		}else {
			request.setAttribute("str", "무언가 잘못되었다.");
			tt="shop_login.jsp";
		}
		sqlSession.commit();
		RequestDispatcher rd = request.getRequestDispatcher(tt);
		rd.forward(request, response);
		
	}

}
