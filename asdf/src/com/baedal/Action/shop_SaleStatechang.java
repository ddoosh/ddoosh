package com.baedal.Action;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class shop_SaleStatechang
 */
@WebServlet("/baedal/shop_SaleStatechangAction")
public class shop_SaleStatechang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_SaleStatechang() {
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

		long order_num = Long.parseLong(request.getParameter("order_num"));
		int state = Integer.parseInt(request.getParameter("state"));		
		
		sorderVO sovo = new sorderVO();
		sovo.setOrder_num(order_num);
		sovo.setOrder_state(state);
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession sqlSession = sqlSessionFactory.openSession();
				
		sqlSession.update("shop_statchang", sovo);
		sqlSession.commit();		
		
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
		RequestDispatcher rd =request.getRequestDispatcher("shop_salemenuViewResult.jsp");
		rd.forward(request, response);		
		
	}

}
