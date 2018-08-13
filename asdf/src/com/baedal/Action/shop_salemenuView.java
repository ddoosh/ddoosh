package com.baedal.Action;

import java.io.IOException;
import java.util.ArrayList;
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
import com.baedal.model.smenuVO;
import com.baedal.model.sorderVO;
import com.baedal.model.sorder_detailVO;

/**
 * Servlet implementation class shop_salemenuView
 */
@WebServlet("/baedal/shop_salemenuViewAction")
public class shop_salemenuView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_salemenuView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long order_num = Long.parseLong(request.getParameter("order_num"));		
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		sorderVO ss = sqlSession.selectOne("shop_saleAddr", order_num);
		
		List<sorder_detailVO> sdvo = sqlSession.selectList("shop_order_detail", order_num);
		
	/*	HashMap<Integer, Object> hm = new HashMap<>();*/
		String mcode="";
		ArrayList<smenuVO> arr =  new ArrayList<>();
		for(sorder_detailVO a: sdvo) {
			mcode = a.getMcode();
			smenuVO smvo = sqlSession.selectOne("shop_OrderSmenu", mcode);
			arr.add(smvo);	
		}
		
		
		request.setAttribute("order_num", ss.getOrder_num());
		request.setAttribute("state", ss.getOrder_state());
		request.setAttribute("addr", ss.getCaddr());
		request.setAttribute("smvo", arr);
		RequestDispatcher rd = request.getRequestDispatcher("shop_salemenuView.jsp");
		rd.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
