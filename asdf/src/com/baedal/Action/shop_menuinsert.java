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
import com.baedal.model.shopVO;
import com.baedal.model.smenuVO;

/**
 * Servlet implementation class shop_menuinsert
 */
@WebServlet("/baedal/shop_menuinsertAction")
public class shop_menuinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_menuinsert() {
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
		
		String menu_name =request.getParameter("mname");
		int menu_price = Integer.parseInt(request.getParameter("mprice"));
		String menu_descript =request.getParameter("mdetail");
		int  menu_side= Integer.parseInt(request.getParameter("side"));
		long snum = Long.parseLong(request.getParameter("snum"));
		System.out.println(menu_name+"name");
		System.out.println(menu_price+"price");
		System.out.println(menu_descript+"descript");
		System.out.println(menu_side+"side");
		System.out.println(snum+"snum");		
		
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("menu_name", menu_name);
		hm.put("menu_price", menu_price);
		hm.put("menu_descript", menu_descript);
		hm.put("menu_side", menu_side);
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		shopVO svo = sqlSession.selectOne("shop_updatelist", snum);
		
		hm.put("menu_maker",svo.getSname());
		
		sqlSession.insert("menuinsert", hm);
		sqlSession.commit();		
		
			
		List<smenuVO> smvo = sqlSession.selectList("shop_menuview", svo.getSname());
		request.setAttribute("smvo", smvo);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("shop_menuSelectResult.jsp");
		rd.forward(request, response);

		
		
		
	}

}
