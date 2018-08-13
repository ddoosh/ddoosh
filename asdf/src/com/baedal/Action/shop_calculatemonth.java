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
import com.baedal.model.sorderVO;

/**
 * Servlet implementation class shop_calculatemonth
 */
@WebServlet("/baedal/shop_calculatemonthAction")
public class shop_calculatemonth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_calculatemonth() {
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
		String m = request.getParameter("m");
		long snum = Long.parseLong(request.getParameter("snum"));
		int tt=0;
		
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("snum", snum);
		hm.put("m", m);
		
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		
		long calculateSum = sqlSession.selectOne("shop_calculateList", snum);
		List<sorderVO> sorder = sqlSession.selectList("shop_calculatemonth", hm);
		
		
		for(sorderVO a : sorder) {
			tt= tt+a.getAmount();
		}
		
		request.setAttribute("m", m);
		request.setAttribute("calculateSum", calculateSum);
		request.setAttribute("tt", tt);
		request.setAttribute("calculateMonth", sorder);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("shop_calculatemonthResult.jsp");
		rd.forward(request, response);
		

	}

}
