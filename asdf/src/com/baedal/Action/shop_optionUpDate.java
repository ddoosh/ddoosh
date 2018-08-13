package com.baedal.Action;

import java.io.IOException;

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

/**
 * Servlet implementation class shop_optionUpDate
 */
@WebServlet("/baedal/shop_optionUpDateAction")
public class shop_optionUpDate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shop_optionUpDate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long snum = Long.parseLong(request.getParameter("snum"));
		String sbossname = request.getParameter("sbossname");
		String sname = request.getParameter("sname");
		String skind = request.getParameter("skind");
		int stel = Integer.parseInt(request.getParameter("stel"));
		int sshoptel = Integer.parseInt(request.getParameter("sshoptel"));
		String saddr = request.getParameter("saddr");
		String semail = request.getParameter("semail");
		String sid = request.getParameter("sid");
		String spwd = request.getParameter("spwd");
		shopVO svo = new shopVO();
		svo.setSaddr(saddr);
		svo.setSbossname(sbossname);
		svo.setSemail(semail);
		svo.setSid(sid);
		svo.setSkind(skind);
		svo.setSname(sname);
		svo.setSnum(snum);
		svo.setSpwd(spwd);
		svo.setSshoptel(sshoptel);
		svo.setStel(stel);
		
		SqlSessionFactory sqlSessionFactory = MybatisManager.sqlSessionFactory;
		SqlSession session =sqlSessionFactory.openSession();
		
		session.update("shop_optionupdate",svo);
		session.commit();
		
		request.setAttribute("svo", svo);
		RequestDispatcher rd = request.getRequestDispatcher("shop_upDateResult.jsp");
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
