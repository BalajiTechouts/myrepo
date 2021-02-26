package mypac;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	@RequestMapping("/abc")
	public ModelAndView getvalues(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv=new ModelAndView();
		User u=new User();
		RandomNumbers rn=new RandomNumbers();
		long addo=rn.generateRandom(12);
		Configuration con=new Configuration();
		  
		con.configure("hibernate.configuration.xml");
		SessionFactory sf=con.buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction txt=session.beginTransaction();
		
		u.setFname(req.getParameter("firstname"));
		u.setLname(req.getParameter("lastname"));
		u.setFathername(req.getParameter("fathername"));
		u.setDateofbirth(req.getParameter("dateofbirth"));
		u.setGender(req.getParameter("gender"));
		u.setPhoneno(req.getParameter("phnno"));
		u.setEmail(req.getParameter("email"));
		u.setAddress(req.getParameter("address"));
		u.setState(req.getParameter("state"));
		u.setPincode(req.getParameter("pincode"));
		u.setAdharno(addo);
		session.save(u);
		txt.commit();
		mv.setViewName("RegisteredSuccefully.jsp");
		return mv;
    }
	
	
	}
