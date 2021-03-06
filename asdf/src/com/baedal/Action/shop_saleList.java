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
import com.baedal.model.sorderVO;

/**
 * Servlet implementation class shop_saleList
 */
@WebServlet("/baedal/shop_saleListAction")
public class shop_saleList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_saleList() {
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
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<sorderVO> sorder = sqlSession.selectList("shop_saleList", snum);
		
		request.setAttribute("sorder", sorder);
		RequestDispatcher rd = request.getRequestDispatcher("shop_saleList.jsp");
		rd.forward(request, response);
	}

}
